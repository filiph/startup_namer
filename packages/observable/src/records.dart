// Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library observable.src.records;

import 'package:collection/collection.dart';
import 'package:quiver/core.dart';

import 'internal.dart';

part 'records/list_change_record.dart';
part 'records/map_change_record.dart';
part 'records/property_change_record.dart';
part 'records/set_change_record.dart';

/// Result of a change to an observed object.
class ChangeRecord {
  /// Signifies a change occurred, but without details of the specific change.
  ///
  /// May be used to produce lower-GC-pressure records where more verbose change
  /// records will not be used directly.
  static const List<ChangeRecord> ANY = const [const ChangeRecord()];

  /// Signifies no changes occurred.
  static const List<ChangeRecord> NONE = const [];

  const ChangeRecord();
}
