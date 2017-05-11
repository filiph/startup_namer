// Copyright (c) 2017, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library fasta.analyzer_loader;

import 'package:kernel/ast.dart' show Program;

import '../builder/builder.dart' show LibraryBuilder;

import '../target_implementation.dart' show TargetImplementation;

import '../source/source_class_builder.dart' show SourceClassBuilder;

import '../source/source_loader.dart' show SourceLoader;

import 'package:analyzer/src/fasta/element_store.dart' show ElementStore;

import 'analyzer_diet_listener.dart' show AnalyzerDietListener;

class AnalyzerLoader<L> extends SourceLoader<L> {
  ElementStore elementStore;

  AnalyzerLoader(TargetImplementation target) : super(target);

  @override
  void computeHierarchy(Program program) {
    elementStore = new ElementStore(coreLibrary, builders);
    ticker.logMs("Built analyzer element model.");
  }

  @override
  AnalyzerDietListener createDietListener(LibraryBuilder library) {
    return new AnalyzerDietListener(library, elementStore);
  }

  @override
  void checkOverrides(List<SourceClassBuilder> sourceClasses) {
    // Not implemented yet. Requires [hierarchy].
  }
}
