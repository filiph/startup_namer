// Copyright (c) 2017, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:angular2/angular2.dart';
import 'package:angular_components/angular_components.dart';
import 'package:english_words/english_words.dart';

// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'my-app',
  styleUrls: const ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: const [CORE_DIRECTIVES, materialDirectives],
  providers: const [materialProviders],
)
class AppComponent {
  WordPair name = generateWordPairs().first;

  AppComponent() { print('name: $name'); }
}
