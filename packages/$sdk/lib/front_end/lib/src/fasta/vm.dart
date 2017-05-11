// Copyright (c) 2017, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/// API for compiling Dart source code to .dill (Kernel IR) files.
library front_end.vm;
// TODO(ahe): Convert this file to use the API in `../../kernel_generator.dart`
// and `../../compiler_options.dart`.

import 'dart:async' show Future;

import 'dart:io' show File, Platform;

import 'dart:typed_data' show Uint8List;

import 'fasta.dart' as fasta;

/// Compilation status codes.
///
/// Note: The [index] property of these constants must match
/// `Dart_KernelCompilationStatus` in
/// [dart_api.h](../../../../runtime/include/dart_api.h).
enum Status {
  /// Compilation was successful.
  ok,

  /// Compilation failed with a compile time error.
  error,

  /// Compiler crashed.
  crash,
}

abstract class CompilationResult {
  CompilationResult._();

  factory CompilationResult.ok(Uint8List bytes) = _CompilationOk;

  factory CompilationResult.errors(List<String> errors) = _CompilationError;

  factory CompilationResult.error(String error) {
    return new _CompilationError(<String>[error]);
  }

  factory CompilationResult.crash(Object exception, StackTrace stack) =
      _CompilationCrash;

  Status get status;

  get payload;

  List toResponse() => [status.index, payload];
}

Future<CompilationResult> parseScript(Uri script, {bool verbose: false}) async {
  final Uri packagesUri = (Platform.packageConfig != null)
      ? Uri.parse(Platform.packageConfig)
      : await _findPackagesFile(script);
  if (packagesUri == null) {
    throw "Could not find .packages";
  }

  final Uri patchedSdk = Uri.base
      .resolveUri(new Uri.file(Platform.resolvedExecutable))
      .resolveUri(new Uri.directory("patched_sdk"));

  if (verbose) {
    print("""DFE: Requesting compilation {
  scriptUri: ${script}
  packagesUri: ${packagesUri}
  patchedSdk: ${patchedSdk}
}""");
  }

  try {
    return await fasta.parseScript(script, packagesUri, patchedSdk, verbose);
  } catch (err, stack) {
    return new CompilationResult.crash(err, stack);
  }
}

class _CompilationOk extends CompilationResult {
  final Uint8List bytes;

  _CompilationOk(this.bytes) : super._();

  @override
  Status get status => Status.ok;

  @override
  get payload => bytes;

  String toString() => "_CompilationOk(${bytes.length} bytes)";
}

abstract class _CompilationFail extends CompilationResult {
  _CompilationFail() : super._();

  String get errorString;

  @override
  get payload => errorString;
}

class _CompilationError extends _CompilationFail {
  final List<String> errors;

  _CompilationError(this.errors);

  @override
  Status get status => Status.error;

  @override
  String get errorString => errors.take(10).join('\n');

  String toString() => "_CompilationError(${errorString})";
}

class _CompilationCrash extends _CompilationFail {
  final Object exception;
  final StackTrace stack;

  _CompilationCrash(this.exception, this.stack);

  @override
  Status get status => Status.crash;

  @override
  String get errorString => "${exception}\n${stack}";

  String toString() => "_CompilationCrash(${errorString})";
}

/// This duplicates functionality from the Loader which we can't easily
/// access from here.
Future<Uri> _findPackagesFile(Uri base) async {
  var dir = new File.fromUri(base).parent;
  while (true) {
    final packagesFile = dir.uri.resolve(".packages");
    if (await new File.fromUri(packagesFile).exists()) {
      return packagesFile;
    }
    if (dir.parent.path == dir.path) {
      break;
    }
    dir = dir.parent;
  }
  return null;
}
