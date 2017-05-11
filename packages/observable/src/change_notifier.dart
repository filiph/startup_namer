// Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';

import 'package:meta/meta.dart';

import 'internal.dart';
import 'observable.dart';
import 'records.dart';

// Temporarily exists to keep 'discard changes' API working for now.
void internalDiscardChanges(ChangeNotifier changeNotifier) {
  changeNotifier._queue = null;
}

/// Supplies [changes] and various hooks to implement [Observable].
///
/// May use [notifyChange] to queue a change record; they are asynchronously
/// delivered at the end of the VM turn.
///
/// [ChangeNotifier] may be extended, mixed in, or used as a delegate.
class ChangeNotifier<C extends ChangeRecord> implements Observable<C> {
  StreamController<List<C>> _changes;

  bool _scheduled = false;
  List<C> _queue;

  /// Emits a list of changes when the state of the object changes.
  ///
  /// Changes should produced in order, if significant.
  @override
  Stream<List<C>> get changes {
    return (_changes ??= new StreamController<List<C>>.broadcast(
      sync: true,
      onListen: observed,
      onCancel: unobserved,
    ))
        .stream;
  }

  /// May override to be notified when [changes] is first observed.
  @override
  @protected
  @mustCallSuper
  void observed() {}

  /// May override to be notified when [changes] is no longer observed.
  @override
  @protected
  @mustCallSuper
  void unobserved() {
    _changes = _queue = null;
  }

  /// If [hasObservers], synchronously emits [changes] that have been queued.
  ///
  /// Returns `true` if changes were emitted.
  @override
  @mustCallSuper
  bool deliverChanges() {
    List<ChangeRecord> changes;
    if (_scheduled && hasObservers) {
      if (_queue != null) {
        changes = freezeInDevMode(_queue);
        _queue = null;
      } else {
        changes = ChangeRecord.ANY;
      }
      _scheduled = false;
      _changes.add(changes);
    }
    return changes != null;
  }

  /// Whether [changes] has at least one active listener.
  ///
  /// May be used to optimize whether to produce change records.
  @override
  bool get hasObservers => _changes?.hasListener == true;

  /// Schedules [change] to be delivered.
  ///
  /// If [change] is omitted then [ChangeRecord.ANY] will be sent.
  ///
  /// If there are no listeners to [changes], this method does nothing.
  @override
  void notifyChange([C change]) {
    if (!hasObservers) {
      return;
    }
    if (change != null) {
      (_queue ??= <C>[]).add(change);
    }
    if (!_scheduled) {
      scheduleMicrotask(deliverChanges);
      _scheduled = true;
    }
  }

  @Deprecated('Exists to make migrations off Observable easier')
  @override
  @protected
  /*=T*/ notifyPropertyChange/*<T>*/(
    Symbol field,
    /*=T*/
    oldValue,
    /*=T*/
    newValue,
  ) {
    throw new UnsupportedError('Not supported by ChangeNotifier');
  }
}

/// Supplies property `changes` and various hooks to implement [Observable].
///
/// May use `notifyChange` or `notifyPropertyChange` to queue a property change
/// record; they are asynchronously delivered at the end of the VM turn.
///
/// [PropertyChangeNotifier] may be extended or used as a delegate. To use as
/// a mixin, instead use with [PropertyChangeMixin]:
///     with ChangeNotifier<PropertyChangeRecord>, PropertyChangeMixin
class PropertyChangeNotifier extends ChangeNotifier<PropertyChangeRecord> {
  @override
  /*=T*/ notifyPropertyChange/*<T>*/(
    Symbol field,
    /*=T*/
    oldValue,
    /*=T*/
    newValue,
  ) {
    if (hasObservers && oldValue != newValue) {
      notifyChange(
        new PropertyChangeRecord/*<T>*/(
          this,
          field,
          oldValue,
          newValue,
        ),
      );
    }
    return newValue;
  }
}
