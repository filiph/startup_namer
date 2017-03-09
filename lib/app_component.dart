// Copyright (c) 2017, filiph. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:convert';
import 'dart:html';
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

  void recreate() {
    names = generateCombo().take(5).toList();
  }

  void add(WordPair name) {
    if (savedNames.contains(name)) {
      remove(name);
      return;
    }
    savedNames.add(name);
  }

  void download() {
    var data = savedNames
        .map((name) => "${name.toLowerCase().join()},"
            "${name.first},"
            "${name.second}")
        .join("\n");
    var dataComponent = Uri.encodeComponent(data);
    var dataUri = "data:application/octet-stream,$dataComponent";
    var el = new AnchorElement(href: dataUri);
    el.attributes['download'] = 'startup_namer.csv';
    el.style.display = 'none';
    document.body.append(el);
    el.click();
    el.remove();
  }

  void remove(WordPair name) {
    savedNames.remove(name);
  }

  @override
  ngOnInit() {
    recreate();
  }
}
