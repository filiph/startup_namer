// Copyright (c) 2017, filiph. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/angular2.dart';
import 'package:angular2/platform/browser.dart';
import 'package:pwa/client.dart' as pwa;
import 'package:startup_namer/app_component.dart';

void main() {
  bootstrap(
      AppComponent, [new Provider(pwa.Client, useValue: new pwa.Client())]);
}
