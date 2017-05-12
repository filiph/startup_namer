// Copyright (c) 2017, filiph. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/core.dart';
import 'package:angular_components/angular_components.dart';
import 'package:english_words/english_words.dart';
import 'package:startup_namer/local_storage_service.dart';

@Component(
  selector: 'my-app',
  styleUrls: const ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: const [materialDirectives],
  providers: const [materialProviders, LocalStorageService],
)
class AppComponent implements OnInit {
  var names = <WordPair>[];
  final savedNames = new Set<WordPair>();
  final LocalStorageService _localStorageService;

  AppComponent(this._localStorageService);

  @override
  void ngOnInit() {
    generateNames();
    savedNames.addAll(_localStorageService.load());
  }

  void generateNames() {
    names = generateWordPairs().take(5).toList();
  }

  void addToSaved(WordPair name) {
    savedNames.add(name);
    _save();
  }

  void removeFromSaved(WordPair name) {
    savedNames.remove(name);
    _save();
  }

  void toggleSavedState(WordPair name) {
    if (savedNames.contains(name)) {
      removeFromSaved(name);
      _save();
      return;
    }
    addToSaved(name);
  }

  void _save() {
    _localStorageService.save(savedNames);
  }
}
