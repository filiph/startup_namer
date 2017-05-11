library pwa_worker;

import 'dart:async';

import 'package:func/func.dart';
import 'package:service_worker/worker.dart';

part 'src/cache.dart';
part 'src/handler.dart';
part 'src/push.dart';
part 'src/router.dart';

/// Async function that can be used in [Worker.onInstall] and [Worker.onActivate].
typedef Future AsyncInitializer();

/// PWA Worker object.
///
/// To start the worker, call method: `run()`.
class Worker {
  /// The router for the fetch events.
  final FetchRouter router = new FetchRouter();

  /// These URLs will be pre-cached and kept up-to-date
  /// for each deployed version of the application.
  List<String> offlineUrls;

  /// Whether to cache web fonts loaded from common third-party websites.
  /// These resources will be cached after the first time they are accessed on
  /// the network, and will be available for offline use.
  ///
  /// The default is using a network-first approach, always updating the cache
  /// with new versions if they become available. The eviction policy is
  /// generous: entries are evicted after a year or after 256 items.
  bool cacheCommonWebFonts = true;

  /// Whether the new SW version should be installed immediately, instead of
  /// waiting for the older versions to be stopped and unregistered.
  bool skipWaiting = true;

  /// The Function will get called on installing the PWA.
  AsyncInitializer onInstall;

  /// The Function will get called on activating the PWA.
  AsyncInitializer onActivate;

  /// Handler of Push notification events.
  PushHandler pushHandler;

  /// Start the PWA (in the ServiceWorker scope).
  void run({String version}) {
    if (version == null) {
      print('Consider using version when calling Worker.run().');
    } else {
      print('Running PWA, version: $version');
    }
    _run(this);
  }
}

bool _isRunning = false;

void _run(Worker worker) {
  if (_isRunning) {
    throw new Exception('PWA must be initalized only once.');
  }
  _isRunning = true;

  BlockCache offline =
      worker.offlineUrls == null ? null : new BlockCache('offline');

  DynamicCache commonWebFonts;
  if (worker.cacheCommonWebFonts) {
    commonWebFonts = new DynamicCache('common-webfonts',
        maxAge: new Duration(days: 365), maxEntries: 256);
    for (String prefix in _commonWebFontPrefixes) {
      worker.router.registerGetUrl(prefix, commonWebFonts.networkFirst);
    }
  }

  Func0<Future> installCallback = () async {
    if (offline != null) {
      await offline.precache(worker.offlineUrls);
    }
    if (worker.onInstall != null) {
      Future f = worker.onInstall();
      if (f != null) await f;
    }
  };
  onInstall.listen((InstallEvent event) {
    event.waitUntil(installCallback());
  });

  Func0<Future> activateCallback = () async {
    if (worker.onActivate != null) {
      Future f = worker.onActivate();
      if (f != null) await f;
    }
  };
  onActivate.listen((ExtendableEvent event) {
    event.waitUntil(activateCallback());
  });

  onFetch.listen((FetchEvent event) {
    RequestHandler handler = worker.router.match(event.request);
    handler ??= defaultRequestHandler;
    if (offline != null) {
      handler = joinHandlers([handler, offline.cacheFirst]);
    }
    event.respondWith(handler(event.request));
  });

  if (worker.skipWaiting) {
    skipWaiting();
  }

  if (worker.pushHandler != null) {
    onPush.listen((PushEvent event) {
      Future f = worker.pushHandler(new _PushContext());
      if (f != null) {
        event.waitUntil(f.then((_) => null, onError: (_) => null));
      }
    });
  }
}

final List<String> _commonWebFontPrefixes = [
  // Google Web Fonts
  'https://fonts.google.com/',
  'https://fonts.googleapis.com/',
  'https://fonts.gstatic.com/',
];
