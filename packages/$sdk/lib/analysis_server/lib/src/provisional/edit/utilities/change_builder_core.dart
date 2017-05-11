// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';

import 'package:analysis_server/plugin/protocol/protocol.dart';
import 'package:analysis_server/src/utilities/change_builder_core.dart';

/**
 * A builder used to build a [SourceChange].
 *
 * Clients may not extend, implement or mix-in this class.
 */
abstract class ChangeBuilder {
  /**
   * Initialize a newly created change builder.
   */
  factory ChangeBuilder() = ChangeBuilderImpl;

  /**
   * Return the source change that was built. The source change will not be
   * complete until all of the futures returned by [addFileEdit] have completed.
   */
  SourceChange get sourceChange;

  /**
   * Use the [buildFileEdit] function to create a collection of edits to the
   * file with the given [path]. The edits will be added to the source change
   * that is being built. The [timeStamp] is the time at which the file was last
   * modified and is used by clients to ensure that it is safe to apply the
   * edits.
   */
  Future<Null> addFileEdit(
      String path, int timeStamp, void buildFileEdit(FileEditBuilder builder));
}

/**
 * A builder used to build a [SourceEdit] as part of a [SourceFileEdit].
 *
 * Clients may not extend, implement or mix-in this class.
 */
abstract class EditBuilder {
  /**
   * Add a region of text that is part of the linked edit group with the given
   * [groupName]. The [buildLinkedEdit] function is used to write the content of
   * the region of text and to add suggestions for other possible values for
   * that region.
   */
  void addLinkedEdit(
      String groupName, void buildLinkedEdit(LinkedEditBuilder builder));

  /**
   * Add the given [string] to the content of the current edit.
   */
  void write(String string);

  /**
   * Add the given [string] to the content of the current edit and then add an
   * end-of-line marker.
   */
  void writeln([String string]);
}

/**
 * A builder used to build a [SourceFileEdit] within a [SourceChange].
 *
 * Clients may not extend, implement or mix-in this class.
 */
abstract class FileEditBuilder {
  /**
   * Add an insertion of text at the given [offset]. The [offset] is relative to
   * the original source. The [buildEdit] function is used to write the text to
   * be inserted. This is fully equivalent to
   *
   *     addReplacement(offset, 0, buildEdit);
   */
  void addInsertion(int offset, void buildEdit(EditBuilder builder));

  /**
   * Add the region of text starting at the given [offset] and continuing for
   * the given [length] to the linked edit group with the given [groupName].
   * The [offset] is relative to the original source. This is typically used to
   * include pre-existing regions of text in a group.
   */
  void addLinkedPosition(int offset, int length, String groupName);

  /**
   * Add a replacement of text starting at the given [offset] and continuing for
   * the given [length]. The [offset] is relative to the original source. The
   * [buildEdit] function is used to write the text that will replace the
   * specified region.
   */
  void addReplacement(
      int offset, int length, void buildEdit(EditBuilder builder));

  /**
   * Add an insertion of the given [text] at the given [offset]. The [offset] is
   * relative to the original source. This is fully equivalent to
   *
   *     addInsertion(offset, (EditBuilder builder) {
   *       builder.write(text);
   *     });
   */
  void addSimpleInsertion(int offset, String text);

  /**
   * Add a replacement of the text starting at the given [offset] and continuing
   * for the given [length]. The [offset] is relative to the original source.
   * The original content will be replaced by the given [text]. This is fully
   * equivalent to
   *
   *     addReplacement(offset, length, (EditBuilder builder) {
   *       builder.write(text);
   *     });
   */
  void addSimpleReplacement(int offset, int length, String text);
}

/**
 * A builder used to build a [LinkedEdit] region within an edit.
 *
 * Clients may not extend, implement or mix-in this class.
 */
abstract class LinkedEditBuilder {
  /**
   * Add the given [value] as a suggestion with the given [kind].
   */
  void addSuggestion(LinkedEditSuggestionKind kind, String value);

  /**
   * Add each of the given [values] as a suggestion with the given [kind].
   */
  void addSuggestions(LinkedEditSuggestionKind kind, Iterable<String> values);

  /**
   * Add the given [string] to the content of the current edit.
   */
  void write(String string);

  /**
   * Add the given [string] to the content of the current edit and then add an
   * end-of-line marker.
   */
  void writeln([String string]);
}
