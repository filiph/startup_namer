// Copyright (c) 2017, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:angular2/core.dart';
import 'package:angular_components/angular_components.dart';
import 'package:english_words/english_words.dart';

// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'my-app',
  styleUrls: const ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: const [materialDirectives],
  providers: const [materialProviders],
)
class AppComponent implements OnInit {
  var names = <WordPair>[];
  final savedNames = new Set<WordPair>();

  void generateNames() {
    names = generateWordPairs().take(5).toList();
  }

  @override
  void ngOnInit() {
    generateNames();
  }

  void addToSaved(WordPair name) {
    savedNames.add(name);
  }

  void removeFromSaved(WordPair name) {
    savedNames.remove(name);
  }

  void toggleSavedState(WordPair name) {
    if (savedNames.contains(name)) {
      removeFromSaved(name);
      return;
    }
    addToSaved(name);
  }
}
