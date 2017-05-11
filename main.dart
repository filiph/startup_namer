// Copyright (c) 2017, filiph. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'main.template.dart' as ngStaticInit;import 'package:angular2/angular2.dart';
import 'package:pwa/client.dart' as pwa;

import 'package:angular2/platform/browser_static.dart';

import 'package:startup_namer/app_component.dart';

void main() {
  bootstrapStatic(AppComponent, [new Provider(pwa.Client, useValue: new pwa.Client())], () { ngStaticInit.initReflector(); });
}
