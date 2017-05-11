// Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library fasta.import;

import 'builder/builder.dart' show Builder, LibraryBuilder, PrefixBuilder;

import 'combinator.dart' show Combinator;

typedef void AddToScope(String name, Builder member);

class Import {
  /// The library that is importing [imported];
  final LibraryBuilder importer;

  /// The library being imported.
  final LibraryBuilder imported;

  final String prefix;

  final List<Combinator> combinators;

  final int charOffset;

  final int prefixCharOffset;

  Import(this.importer, this.imported, this.prefix, this.combinators,
      this.charOffset, this.prefixCharOffset);

  Uri get fileUri => importer.fileUri;

  void finalizeImports(LibraryBuilder importer) {
    AddToScope add;
    PrefixBuilder prefix;
    if (this.prefix == null) {
      add = (String name, Builder member) {
        importer.addToScope(name, member, charOffset, true);
      };
    } else {
      prefix = new PrefixBuilder(
          this.prefix, <String, Builder>{}, importer, prefixCharOffset);
      add = (String name, Builder member) {
        prefix.exports[name] = member;
      };
    }
    imported.exports.forEach((String name, Builder member) {
      if (combinators != null) {
        for (Combinator combinator in combinators) {
          if (combinator.isShow && !combinator.names.contains(name)) return;
          if (combinator.isHide && combinator.names.contains(name)) return;
        }
      }
      add(name, member);
    });
    if (prefix != null) {
      Builder existing = importer.addBuilder(prefix.name, prefix, charOffset);
      if (existing == prefix) {
        importer.addToScope(prefix.name, prefix, prefixCharOffset, true);
      }
    }
  }
}
