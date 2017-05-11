// @ignoreProblemForFile annotate_overrides
// @ignoreProblemForFile cancel_subscriptions
// @ignoreProblemForFile constant_identifier_names
// @ignoreProblemForFile non_constant_identifier_names
// @ignoreProblemForFile implementation_imports
// @ignoreProblemForFile library_prefixes
// @ignoreProblemForFile type_annotate_public_apis
// @ignoreProblemForFile STRONG_MODE_DOWN_CAST_COMPOSITE
// @ignoreProblemForFile UNUSED_IMPORT
// @ignoreProblemForFile UNUSED_SHOWN_NAME
// @ignoreProblemForFile UNUSED_LOCAL_VARIABLE
import 'main.dart';
import 'package:angular2/angular2.dart';
import 'package:pwa/client.dart' as pwa;
import 'package:angular2/platform/browser_static.dart';
import 'package:startup_namer/app_component.dart';
import 'package:angular2/angular2.template.dart' as i0;
import 'package:angular2/platform/browser_static.template.dart' as i1;
import 'package:startup_namer/app_component.template.dart' as i2;
export 'main.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
i2.initReflector();
}
