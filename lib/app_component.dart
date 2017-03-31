// Copyright (c) 2017, filiph. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/core.dart';
import 'package:angular2_components/angular2_components.dart';
import 'package:english_words/english_words.dart';

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

  @override
  ngOnInit() {
    recreate();
  }

  void recreate() {
    names = generateWordPairs().take(5).toList();
  }

  void removeFromSaved(WordPair name) {
    savedNames.remove(name);
  }

  void toggleSavedState(WordPair name) {
    if (savedNames.contains(name)) {
      removeFromSaved(name);
      return;
    }
    savedNames.add(name);
  }
}
