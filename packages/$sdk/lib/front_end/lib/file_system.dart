// Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library front_end.file_system;

import 'dart:async';

import 'package:path/path.dart' as path;

/// Abstract interface to file system operations.
///
/// All front end interaction with the file system goes through this interface;
/// this makes it possible for clients to use the front end in a way that
/// doesn't require file system access (e.g. to run unit tests, or to run
/// inside a browser).
///
/// Not intended to be implemented or extended by clients.
abstract class FileSystem {
  /// Returns a path context suitable for use with this [FileSystem].
  ///
  /// TODO(paulberry): try to eliminate all usages of this.  Since the
  /// FileSystem API now uses URIs rather than paths, it should not be needed.
  path.Context get context;

  /// Returns a [FileSystemEntity] corresponding to the given [uri].
  ///
  /// Uses of `..` and `.` in the URI are normalized before returning.
  ///
  /// If the URI scheme is not supported by this file system, an [Error] will be
  /// thrown.
  ///
  /// Does not check whether a file or folder exists at the given location.
  FileSystemEntity entityForUri(Uri uri);
}

/// Abstract representation of a file system entity that may or may not exist.
///
/// Instances of this class have suitable implementations of equality tests and
/// hashCode.
///
/// Not intended to be implemented or extended by clients.
abstract class FileSystemEntity {
  /// Returns the absolute normalized URI represented by this file system
  /// entity.
  ///
  /// Note: this is not necessarily the same as the URI that was passed to
  /// [FileSystem.entityForUri], since the URI might have been normalized.
  Uri get uri;

  /// Attempts to access this file system entity as a file and read its contents
  /// as raw bytes.
  ///
  /// If an error occurs while attempting to read the file (e.g. because no such
  /// file exists, or the entity is a directory), the future is completed with
  /// an [Exception].
  Future<List<int>> readAsBytes();

  /// Attempts to access this file system entity as a file and read its contents
  /// as a string.
  ///
  /// The file is assumed to be UTF-8 encoded.
  ///
  /// If an error occurs while attempting to read the file (e.g. because no such
  /// file exists, the entity is a directory, or the file is not valid UTF-8),
  /// the future is completed with an [Exception].
  Future<String> readAsString();
}
