// Copyright (c) 2017, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:angular2/angular2.dart';
import 'package:angular_components/angular_components.dart';
import 'package:english_words/english_words.dart';
import 'package:startup_namer/local_storage_service.dart';

// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'my-app',
  styleUrls: const ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: const [CORE_DIRECTIVES, materialDirectives],
  providers: const [materialProviders, LocalStorageService],
)
class AppComponent implements OnInit {
  var names = <WordPair>[];
  final savedNames = new Set<WordPair>();
  final LocalStorageService _localStorageService;

  AppComponent(this._localStorageService);

  void generateNames() {
    names = generateWordPairs().take(5).toList();
  }

  @override
  void ngOnInit() {
    generateNames();
    savedNames.addAll(_localStorageService.load());
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
