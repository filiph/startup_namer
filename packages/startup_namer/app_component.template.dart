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
import 'app_component.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/core.dart';
import 'package:angular_components/angular_components.dart';
import 'package:english_words/english_words.dart';
import 'package:angular2/core.template.dart' as i0;
import 'package:angular_components/angular_components.template.dart' as i1;
export 'app_component.dart';
import 'app_component.css.shim.dart' as import0;
import 'package:angular2/src/debug/debug_context.dart';
import 'package:angular_components/src/components/theme/dark_theme.dart' as import2;
import 'package:angular_components/src/components/material_button/material_button.dart' as import3;
import 'package:angular_components/src/components/button_decorator/button_decorator.dart' as import4;
import 'package:angular_components/src/components/glyph/glyph.dart' as import5;
import 'package:angular_components/src/components/material_list/material_list.dart' as import6;
import 'package:angular2/src/core/linker/template_ref.dart';
import 'package:angular2/src/common/directives/ng_for.dart' as import8;
import 'package:angular2/src/debug/debug_app_view.dart';
import 'app_component.dart' as import10;
import 'dart:html';
import 'package:angular_components/src/components/material_button/material_button.template.dart' as import12;
import 'package:angular_components/src/components/glyph/glyph.template.dart' as import13;
import 'package:angular_components/src/components/material_list/material_list.template.dart' as import14;
import 'package:angular2/src/core/linker/view_container.dart';
import 'package:angular2/src/core/render/api.dart';
import 'package:angular2/src/core/linker/app_view.dart';
import 'package:angular2/src/core/linker/view_type.dart' as import18;
import 'package:angular2/src/core/change_detection/change_detection.dart';
import 'package:angular2/src/core/linker/app_view_utils.dart' as import20;
import 'package:angular2/angular2.dart';
import 'package:angular_components/src/components/theme/module.dart' as import22;
import 'package:angular2/src/core/linker/element_ref.dart';
import 'package:angular_components/src/components/material_list/material_list_item.dart' as import24;
import 'package:angular_components/src/components/material_list/material_list_item.template.dart' as import25;
import 'package:angular_components/src/utils/browser/dom_service/dom_service.dart' as import26;
import 'package:angular_components/src/components/mixins/material_dropdown_base.dart' as import27;
import 'package:angular_components/src/laminate/popup/src/popup_service.dart' as import28;
import 'package:angular_components/src/utils/angular/managed_zone/src/managed_zone.dart' as import29;
import 'package:angular_components/src/utils/angular/imperative_view/imperative_view.dart' as import30;
import 'package:angular_components/src/laminate/ruler/dom_ruler.dart' as import31;
import 'package:angular_components/src/laminate/overlay/src/render/overlay_dom_render_service.dart' as import32;
import 'package:angular_components/src/laminate/overlay/src/render/overlay_style_config.dart' as import33;
import 'package:angular_components/src/css/acux/zindexer.dart' as import34;
import 'package:angular_components/src/laminate/overlay/src/overlay_service.dart' as import35;
import 'package:angular_components/src/laminate/popup/src/dom_popup_source.dart' as import36;
import 'package:angular_components/src/utils/angular/managed_zone/angular_2.dart' as import37;
import 'package:angular_components/src/laminate/overlay/src/overlay_dom_service.dart' as import38;
import 'package:angular_components/src/laminate/popup/module.dart' as import39;
import 'package:angular2/src/core/zone/ng_zone.dart' as import40;
import 'package:angular_components/src/utils/browser/window/module.dart' as import41;
import 'package:angular_components/src/utils/browser/dom_service/angular_2.dart' as import42;
import 'package:angular_components/src/utils/disposer/disposer.dart' as import43;
import 'package:angular2/src/core/linker/dynamic_component_loader.dart' as import44;
import 'package:angular_components/src/laminate/overlay/module.dart' as import45;
const List<dynamic> styles_AppComponent = const [import0.styles];
List<StaticNodeDebugInfo> nodeDebugInfos_AppComponent0 = [
  new StaticNodeDebugInfo([
    import2.AcxDarkTheme,import3.MaterialButtonComponent,import4.ButtonDirective
  ]
  ,import3.MaterialButtonComponent,<String, dynamic>{}),null,new StaticNodeDebugInfo([import5.GlyphComponent],import5.GlyphComponent,<String, dynamic>{}),
  null,null,new StaticNodeDebugInfo([import6.MaterialListComponent],import6.MaterialListComponent,<String, dynamic>{}),
  null,null,null,new StaticNodeDebugInfo([
    TemplateRef,import8.NgFor
  ]
  ,null,<String, dynamic>{}),null,null,null,null,null,null,null,new StaticNodeDebugInfo([
    TemplateRef,import8.NgFor
  ]
  ,null,<String, dynamic>{}),null,null,null
]
;
class ViewAppComponent0 extends DebugAppView<import10.AppComponent> {
  Element _el_0;
  import12.ViewMaterialButtonComponent0 _compView_0;
  import2.AcxDarkTheme _AcxDarkTheme_0_2;
  import3.MaterialButtonComponent _MaterialButtonComponent_0_3;
  Element _el_2;
  import13.ViewGlyphComponent0 _compView_2;
  import5.GlyphComponent _GlyphComponent_2_2;
  Element _el_5;
  import14.ViewMaterialListComponent0 _compView_5;
  import6.MaterialListComponent _MaterialListComponent_5_2;
  DivElement _el_7;
  ViewContainer _appEl_9;
  import8.NgFor _NgFor_9_5;
  DivElement _el_12;
  DivElement _el_14;
  ViewContainer _appEl_17;
  import8.NgFor _NgFor_17_5;
  var _expr_1;
  var _expr_2;
  var _expr_3;
  var _expr_4;
  bool _expr_5;
  var _expr_6;
  var _expr_8;
  var _expr_9;
  var _expr_10;
  static RenderComponentType renderType;
  ViewAppComponent0(AppView<dynamic> parentView,num parentIndex): super(import18.ViewType.COMPONENT,{},parentView,parentIndex,ChangeDetectionStrategy.CheckAlways,nodeDebugInfos_AppComponent0) {
    rootEl = document.createElement('my-app');
    renderType ??= import20.appViewUtils.createRenderType('asset:startup_namer/lib/app_component.html',ViewEncapsulation.Emulated,styles_AppComponent);
    setupComponentType(renderType);
  }
  ComponentRef build() {
    final import10.AppComponent _ctx = ctx;
    final HtmlElement parentRenderNode = initViewRoot(rootEl);
    _compView_0 = new import12.ViewMaterialButtonComponent0(this,0);
    _el_0 = _compView_0.rootEl;
    parentRenderNode.append(_el_0);
    dbgElm(this,_el_0,0,0,0);
    addShimC(_el_0);
    _AcxDarkTheme_0_2 = new import2.AcxDarkTheme(parentView.injectorGet(import22.darkThemeToken,parentIndex,null));
    _MaterialButtonComponent_0_3 = new import3.MaterialButtonComponent(new ElementRef(_el_0),_AcxDarkTheme_0_2,_compView_0.ref);
    Text _text_1 = new Text('\n  ');
    dbgElm(this,_text_1,1,0,45);
    _compView_2 = new import13.ViewGlyphComponent0(this,2);
    _el_2 = _compView_2.rootEl;
    dbgElm(this,_el_2,2,1,2);
    createAttr(_el_2,'icon','lightbulb_outline');
    addShimC(_el_2);
    _GlyphComponent_2_2 = new import5.GlyphComponent(new ElementRef(_el_2));
    _compView_2.create(_GlyphComponent_2_2,[]);
    Text _text_3 = new Text('\n    Get new ideas\n');
    dbgElm(this,_text_3,3,1,42);
      _compView_0.create(_MaterialButtonComponent_0_3,[[
        _text_1,_el_2,_text_3
      ]
    ]);
    Text _text_4 = new Text('\n\n');
    parentRenderNode.append(_text_4);
    dbgElm(this,_text_4,4,3,18);
    _compView_5 = new import14.ViewMaterialListComponent0(this,5);
    _el_5 = _compView_5.rootEl;
    parentRenderNode.append(_el_5);
    dbgElm(this,_el_5,5,5,0);
    addShimC(_el_5);
    _MaterialListComponent_5_2 = new import6.MaterialListComponent();
    Text _text_6 = new Text('\n  ');
    dbgElm(this,_text_6,6,5,15);
    var doc = document;
    _el_7 = doc.createElement('div');
    dbgElm(this,_el_7,7,6,2);
    createAttr(_el_7,'group','');
    addShimC(_el_7);
    Text _text_8 = new Text('\n    ');
    _el_7.append(_text_8);
    dbgElm(this,_text_8,8,6,13);
    var _anchor_9 = ngAnchor.clone(false);
    _el_7.append(_anchor_9);
    dbgElm(this,_anchor_9,9,7,4);
    _appEl_9 = new ViewContainer(9,7,this,_anchor_9);
    TemplateRef _TemplateRef_9_4 = new TemplateRef(_appEl_9,viewFactory_AppComponent1);
    _NgFor_9_5 = new import8.NgFor(_appEl_9,_TemplateRef_9_4);
    Text _text_10 = new Text('\n  ');
    _el_7.append(_text_10);
    dbgElm(this,_text_10,10,11,25);
    Text _text_11 = new Text('\n  ');
    dbgElm(this,_text_11,11,12,8);
    _el_12 = doc.createElement('div');
    dbgElm(this,_el_12,12,13,2);
    createAttr(_el_12,'group','');
    addShimC(_el_12);
    Text _text_13 = new Text('\n    ');
    _el_12.append(_text_13);
    dbgElm(this,_text_13,13,13,13);
    _el_14 = createAndAppendDbg(this,doc,'div',_el_12,14,14,4);
    createAttr(_el_14,'label','');
    addShimC(_el_14);
    Text _text_15 = new Text('Saved names');
    _el_14.append(_text_15);
    dbgElm(this,_text_15,15,14,15);
    Text _text_16 = new Text('\n    ');
    _el_12.append(_text_16);
    dbgElm(this,_text_16,16,14,32);
    var _anchor_17 = ngAnchor.clone(false);
    _el_12.append(_anchor_17);
    dbgElm(this,_anchor_17,17,15,4);
    _appEl_17 = new ViewContainer(17,12,this,_anchor_17);
    TemplateRef _TemplateRef_17_4 = new TemplateRef(_appEl_17,viewFactory_AppComponent2);
    _NgFor_17_5 = new import8.NgFor(_appEl_17,_TemplateRef_17_4);
    Text _text_18 = new Text('\n  ');
    _el_12.append(_text_18);
    dbgElm(this,_text_18,18,18,25);
    Text _text_19 = new Text('\n');
    dbgElm(this,_text_19,19,19,8);
      _compView_5.create(_MaterialListComponent_5_2,[[
        _text_6,_el_7,_text_11,_el_12,_text_19
      ]
    ]);
    Text _text_20 = new Text('\n');
    parentRenderNode.append(_text_20);
    dbgElm(this,_text_20,20,20,16);
    listen(_el_0,'trigger',this.eventHandler0(ctx.generateNames));
    final subscription_0 = _MaterialButtonComponent_0_3.trigger.listen(this.eventHandler0(ctx.generateNames));
    init(const [],[subscription_0],[
      _el_0,_text_1,_el_2,_text_3,_text_4,_el_5,_text_6,_el_7,_text_8,_anchor_9,_text_10,
      _text_11,_el_12,_text_13,_el_14,_text_15,_text_16,_anchor_17,_text_18,_text_19,
      _text_20
    ]
    );
    return null;
  }
  dynamic injectorGetInternal(dynamic token,int nodeIndex,dynamic notFoundResult) {
    if ((identical(token, import5.GlyphComponent) && (2 == nodeIndex))) { return _GlyphComponent_2_2; }
    if ((identical(token, import2.AcxDarkTheme) && ((0 <= nodeIndex) && (nodeIndex <= 3)))) { return _AcxDarkTheme_0_2; }
    if (((identical(token, import3.MaterialButtonComponent) || identical(token, import4.ButtonDirective)) && ((0 <= nodeIndex) && (nodeIndex <= 3)))) { return _MaterialButtonComponent_0_3; }
    if ((identical(token, import6.MaterialListComponent) && ((5 <= nodeIndex) && (nodeIndex <= 19)))) { return _MaterialListComponent_5_2; }
    return notFoundResult;
  }
  void detectChangesInternal() {
    bool changed = true;
    bool firstCheck = identical(this.cdState, ChangeDetectorState.NeverChecked);
    final import10.AppComponent _ctx = ctx;
    changed = false;
    if (firstCheck) {
      _GlyphComponent_2_2.icon = 'lightbulb_outline';
      changed = true;
    }
    if (changed) { _compView_2.markAsCheckOnce(); }
    dbg(9,7,24);
    final currVal_9 = _ctx.names;
    if (import20.checkBinding(_expr_9,currVal_9)) {
      _NgFor_9_5.ngForOf = currVal_9;
      _expr_9 = currVal_9;
    }
    if (!import20.AppViewUtils.throwOnChanges) { _NgFor_9_5.ngDoCheck(); }
    dbg(17,15,24);
    final currVal_10 = _ctx.savedNames;
    if (import20.checkBinding(_expr_10,currVal_10)) {
      _NgFor_17_5.ngForOf = currVal_10;
      _expr_10 = currVal_10;
    }
    if (!import20.AppViewUtils.throwOnChanges) { _NgFor_17_5.ngDoCheck(); }
    _appEl_9.detectChangesInNestedViews();
    _appEl_17.detectChangesInNestedViews();
    dbg(0,0,0);
    final currVal_1 = _MaterialButtonComponent_0_3.disabledStr;
    if (import20.checkBinding(_expr_1,currVal_1)) {
      setAttr(_el_0,'aria-disabled',currVal_1?.toString());
      _expr_1 = currVal_1;
    }
    dbg(0,0,0);
    final currVal_2 = (_MaterialButtonComponent_0_3.raised? '': null);
    if (import20.checkBinding(_expr_2,currVal_2)) {
      setAttr(_el_0,'raised',currVal_2?.toString());
      _expr_2 = currVal_2;
    }
    dbg(0,0,0);
    final currVal_3 = _MaterialButtonComponent_0_3.tabIndex;
    if (import20.checkBinding(_expr_3,currVal_3)) {
      setAttr(_el_0,'tabindex',currVal_3?.toString());
      _expr_3 = currVal_3;
    }
    dbg(0,0,0);
    final currVal_4 = _MaterialButtonComponent_0_3.zElevation;
    if (import20.checkBinding(_expr_4,currVal_4)) {
      setAttr(_el_0,'elevation',currVal_4?.toString());
      _expr_4 = currVal_4;
    }
    dbg(0,0,0);
    final currVal_5 = _MaterialButtonComponent_0_3.visualFocus;
    if (import20.checkBinding(_expr_5,currVal_5)) {
      updateElemClass(_el_0,'is-focused',currVal_5);
      _expr_5 = currVal_5;
    }
    dbg(0,0,0);
    final currVal_6 = (_MaterialButtonComponent_0_3.disabled? '': null);
    if (import20.checkBinding(_expr_6,currVal_6)) {
      setAttr(_el_0,'disabled',currVal_6?.toString());
      _expr_6 = currVal_6;
    }
    dbg(5,5,0);
    final currVal_8 = _MaterialListComponent_5_2.size;
    if (import20.checkBinding(_expr_8,currVal_8)) {
      setAttr(_el_5,'size',currVal_8?.toString());
      _expr_8 = currVal_8;
    }
    _compView_0.detectChanges();
    _compView_2.detectChanges();
    _compView_5.detectChanges();
  }
  void destroyInternal() {
    _appEl_9.destroyNestedViews();
    _appEl_17.destroyNestedViews();
    _compView_0.destroy();
    _compView_2.destroy();
    _compView_5.destroy();
  }
}
AppView<import10.AppComponent> viewFactory_AppComponent0(AppView<dynamic> parentView,num parentIndex) {
  return new ViewAppComponent0(parentView,parentIndex);
}
List<StaticNodeDebugInfo> nodeDebugInfos_AppComponent1 = [
  new StaticNodeDebugInfo([import24.MaterialListItemComponent],import24.MaterialListItemComponent,<String, dynamic>{}),
  null,null,null,null
]
;
class ViewAppComponent1 extends DebugAppView<import10.AppComponent> {
  Element _el_0;
  import25.ViewMaterialListItemComponent0 _compView_0;
  import24.MaterialListItemComponent _MaterialListItemComponent_0_2;
  Element _el_2;
  Text _text_3;
  Text _text_4;
  bool _expr_1;
  var _expr_2;
  var _expr_3;
  bool _expr_4;
  bool _expr_5;
  var _expr_6;
  var _expr_7;
  var _expr_8;
  ViewAppComponent1(AppView<dynamic> parentView,num parentIndex): super(import18.ViewType.EMBEDDED,{'\$implicit': null},parentView,parentIndex,ChangeDetectionStrategy.CheckAlways,nodeDebugInfos_AppComponent1) {
    componentType = ViewAppComponent0.renderType;
  }
  ComponentRef build() {
    final import10.AppComponent _ctx = ctx;
    _compView_0 = new import25.ViewMaterialListItemComponent0(this,0);
    _el_0 = _compView_0.rootEl;
    dbgElm(this,_el_0,0,7,4);
    addShimC(_el_0);
    _MaterialListItemComponent_0_2 = new import24.MaterialListItemComponent(new ElementRef(_el_0),parentView.parentView.injectorGet(import26.DomService,parentView.parentIndex),parentView.parentView.injectorGet(import27.DropdownHandle,parentView.parentIndex,null),null,null);
    Text _text_1 = new Text('\n      ');
    dbgElm(this,_text_1,1,9,69);
    var doc = document;
    _el_2 = doc.createElement('span');
    dbgElm(this,_el_2,2,10,6);
    _el_2.className = 'first';
    addShimE(_el_2);
    _text_3 = new Text('');
    _el_2.append(_text_3);
    dbgElm(this,_text_3,3,10,26);
    _text_4 = new Text('');
    dbgElm(this,_text_4,4,10,47);
      _compView_0.create(_MaterialListItemComponent_0_2,[[
        _text_1,_el_2,_text_4
      ]
    ]);
    listen(_el_0,'trigger',evt(_handle_trigger_0_0));
    final subscription_0 = _MaterialListItemComponent_0_2.trigger.listen(evt(_handle_trigger_0_0));
    init([_el_0],[subscription_0],[
      _el_0,_text_1,_el_2,_text_3,_text_4
    ]
    );
    return null;
  }
  dynamic injectorGetInternal(dynamic token,int nodeIndex,dynamic notFoundResult) {
    if ((identical(token, import24.MaterialListItemComponent) && ((0 <= nodeIndex) && (nodeIndex <= 4)))) { return _MaterialListItemComponent_0_2; }
    return notFoundResult;
  }
  void detectChangesInternal() {
    final import10.AppComponent _ctx = ctx;
    dbg(0,9,24);
    final currVal_1 = _ctx.savedNames.contains(locals['\$implicit']);
    if (import20.checkBinding(_expr_1,currVal_1)) {
      updateElemClass(_el_0,'is-saved',currVal_1);
      _expr_1 = currVal_1;
    }
    dbg(0,7,4);
    final currVal_2 = _MaterialListItemComponent_0_2.tabIndex;
    if (import20.checkBinding(_expr_2,currVal_2)) {
      setAttr(_el_0,'tabindex',currVal_2?.toString());
      _expr_2 = currVal_2;
    }
    dbg(0,7,4);
    final currVal_3 = _MaterialListItemComponent_0_2.role;
    if (import20.checkBinding(_expr_3,currVal_3)) {
      setAttr(_el_0,'role',currVal_3?.toString());
      _expr_3 = currVal_3;
    }
    dbg(0,7,4);
    final currVal_4 = _MaterialListItemComponent_0_2.disabled;
    if (import20.checkBinding(_expr_4,currVal_4)) {
      updateElemClass(_el_0,'disabled',currVal_4);
      _expr_4 = currVal_4;
    }
    dbg(0,7,4);
    final currVal_5 = _MaterialListItemComponent_0_2.active;
    if (import20.checkBinding(_expr_5,currVal_5)) {
      updateElemClass(_el_0,'active',currVal_5);
      _expr_5 = currVal_5;
    }
    dbg(0,7,4);
    final currVal_6 = _MaterialListItemComponent_0_2.disabledStr;
    if (import20.checkBinding(_expr_6,currVal_6)) {
      setAttr(_el_0,'aria-disabled',currVal_6?.toString());
      _expr_6 = currVal_6;
    }
    dbg(3,10,26);
    final currVal_7 = import20.interpolate0(locals['\$implicit'].first);
    if (import20.checkBinding(_expr_7,currVal_7)) {
      _text_3.text = currVal_7;
      _expr_7 = currVal_7;
    }
    dbg(4,10,47);
    final currVal_8 = import20.interpolate1('',locals['\$implicit'].second,'.com\n    ');
    if (import20.checkBinding(_expr_8,currVal_8)) {
      _text_4.text = currVal_8;
      _expr_8 = currVal_8;
    }
    _compView_0.detectChanges();
  }
  void destroyInternal() {
    _compView_0.destroy();
    dbg(0,7,4);
    _MaterialListItemComponent_0_2.ngOnDestroy();
  }
  bool _handle_trigger_0_0($event) {
    this.markPathToRootAsCheckOnce();
    dbg(0,8,24);
    final dynamic pd_0 = !identical((ctx.toggleSavedState(locals['\$implicit']) as dynamic), false);
    return (true && pd_0);
  }
}
AppView<import10.AppComponent> viewFactory_AppComponent1(AppView<dynamic> parentView,num parentIndex) {
  return new ViewAppComponent1(parentView,parentIndex);
}
List<StaticNodeDebugInfo> nodeDebugInfos_AppComponent2 = [
  new StaticNodeDebugInfo([import24.MaterialListItemComponent],import24.MaterialListItemComponent,<String, dynamic>{}),
  null,null,null,null
]
;
class ViewAppComponent2 extends DebugAppView<import10.AppComponent> {
  Element _el_0;
  import25.ViewMaterialListItemComponent0 _compView_0;
  import24.MaterialListItemComponent _MaterialListItemComponent_0_2;
  Element _el_2;
  Text _text_3;
  Text _text_4;
  var _expr_1;
  var _expr_2;
  bool _expr_3;
  bool _expr_4;
  var _expr_5;
  var _expr_6;
  var _expr_7;
  ViewAppComponent2(AppView<dynamic> parentView,num parentIndex): super(import18.ViewType.EMBEDDED,{'\$implicit': null},parentView,parentIndex,ChangeDetectionStrategy.CheckAlways,nodeDebugInfos_AppComponent2) {
    componentType = ViewAppComponent0.renderType;
  }
  ComponentRef build() {
    final import10.AppComponent _ctx = ctx;
    _compView_0 = new import25.ViewMaterialListItemComponent0(this,0);
    _el_0 = _compView_0.rootEl;
    dbgElm(this,_el_0,0,15,4);
    addShimC(_el_0);
    _MaterialListItemComponent_0_2 = new import24.MaterialListItemComponent(new ElementRef(_el_0),parentView.parentView.injectorGet(import26.DomService,parentView.parentIndex),parentView.parentView.injectorGet(import27.DropdownHandle,parentView.parentIndex,null),null,null);
    Text _text_1 = new Text('\n      ');
    dbgElm(this,_text_1,1,16,58);
    var doc = document;
    _el_2 = doc.createElement('span');
    dbgElm(this,_el_2,2,17,6);
    _el_2.className = 'first';
    addShimE(_el_2);
    _text_3 = new Text('');
    _el_2.append(_text_3);
    dbgElm(this,_text_3,3,17,26);
    _text_4 = new Text('');
    dbgElm(this,_text_4,4,17,47);
      _compView_0.create(_MaterialListItemComponent_0_2,[[
        _text_1,_el_2,_text_4
      ]
    ]);
    listen(_el_0,'trigger',evt(_handle_trigger_0_0));
    final subscription_0 = _MaterialListItemComponent_0_2.trigger.listen(evt(_handle_trigger_0_0));
    init([_el_0],[subscription_0],[
      _el_0,_text_1,_el_2,_text_3,_text_4
    ]
    );
    return null;
  }
  dynamic injectorGetInternal(dynamic token,int nodeIndex,dynamic notFoundResult) {
    if ((identical(token, import24.MaterialListItemComponent) && ((0 <= nodeIndex) && (nodeIndex <= 4)))) { return _MaterialListItemComponent_0_2; }
    return notFoundResult;
  }
  void detectChangesInternal() {
    final import10.AppComponent _ctx = ctx;
    dbg(0,15,4);
    final currVal_1 = _MaterialListItemComponent_0_2.tabIndex;
    if (import20.checkBinding(_expr_1,currVal_1)) {
      setAttr(_el_0,'tabindex',currVal_1?.toString());
      _expr_1 = currVal_1;
    }
    dbg(0,15,4);
    final currVal_2 = _MaterialListItemComponent_0_2.role;
    if (import20.checkBinding(_expr_2,currVal_2)) {
      setAttr(_el_0,'role',currVal_2?.toString());
      _expr_2 = currVal_2;
    }
    dbg(0,15,4);
    final currVal_3 = _MaterialListItemComponent_0_2.disabled;
    if (import20.checkBinding(_expr_3,currVal_3)) {
      updateElemClass(_el_0,'disabled',currVal_3);
      _expr_3 = currVal_3;
    }
    dbg(0,15,4);
    final currVal_4 = _MaterialListItemComponent_0_2.active;
    if (import20.checkBinding(_expr_4,currVal_4)) {
      updateElemClass(_el_0,'active',currVal_4);
      _expr_4 = currVal_4;
    }
    dbg(0,15,4);
    final currVal_5 = _MaterialListItemComponent_0_2.disabledStr;
    if (import20.checkBinding(_expr_5,currVal_5)) {
      setAttr(_el_0,'aria-disabled',currVal_5?.toString());
      _expr_5 = currVal_5;
    }
    dbg(3,17,26);
    final currVal_6 = import20.interpolate0(locals['\$implicit'].first);
    if (import20.checkBinding(_expr_6,currVal_6)) {
      _text_3.text = currVal_6;
      _expr_6 = currVal_6;
    }
    dbg(4,17,47);
    final currVal_7 = import20.interpolate1('',locals['\$implicit'].second,'.com\n    ');
    if (import20.checkBinding(_expr_7,currVal_7)) {
      _text_4.text = currVal_7;
      _expr_7 = currVal_7;
    }
    _compView_0.detectChanges();
  }
  void destroyInternal() {
    _compView_0.destroy();
    dbg(0,15,4);
    _MaterialListItemComponent_0_2.ngOnDestroy();
  }
  bool _handle_trigger_0_0($event) {
    this.markPathToRootAsCheckOnce();
    dbg(0,16,24);
    final dynamic pd_0 = !identical((ctx.removeFromSaved(locals['\$implicit']) as dynamic), false);
    return (true && pd_0);
  }
}
AppView<import10.AppComponent> viewFactory_AppComponent2(AppView<dynamic> parentView,num parentIndex) {
  return new ViewAppComponent2(parentView,parentIndex);
}
const List<dynamic> styles_AppComponentHost = const [];
  List<StaticNodeDebugInfo> nodeDebugInfos_AppComponentHost0 = [new StaticNodeDebugInfo([
    import10.AppComponent,import28.defaultPopupPositions,import29.ManagedZone,Window,
    import26.DomService,import30.AcxImperativeViewUtils,Document,import31.DomRuler,import32.overlayContainerName,
    import32.overlayContainerParent,import32.overlayContainerToken,import32.overlaySyncDom,
    import33.OverlayStyleConfig,import34.ZIndexer,import32.OverlayDomRenderService,import35.OverlayService,
    import36.DomPopupSourceFactory,import28.PopupService
  ]
,import10.AppComponent,<String, dynamic>{})];
class ViewAppComponentHost0 extends DebugAppView<dynamic> {
  ViewAppComponent0 _compView_0;
  import10.AppComponent _AppComponent_0_2;
  dynamic __defaultPopupPositions_0_3;
  import37.Angular2ManagedZone __ManagedZone_0_4;
  dynamic __Window_0_5;
  dynamic __DomService_0_6;
  import30.AcxImperativeViewUtils __AcxImperativeViewUtils_0_7;
  dynamic __Document_0_8;
  import31.DomRuler __DomRuler_0_9;
  dynamic __overlayContainerName_0_10;
  dynamic __overlayContainerParent_0_11;
  dynamic __overlayContainerToken_0_12;
  dynamic __overlaySyncDom_0_13;
  import33.OverlayStyleConfig __OverlayStyleConfig_0_14;
  import34.ZIndexer __ZIndexer_0_15;
  import32.OverlayDomRenderService __OverlayDomRenderService_0_16;
  import38.OverlayDomService __OverlayService_0_17;
  import36.DomPopupSourceFactory __DomPopupSourceFactory_0_18;
  import28.PopupService __PopupService_0_19;
  static RenderComponentType renderType;
  ViewAppComponentHost0(AppView<dynamic> parentView,num parentIndex): super(import18.ViewType.HOST,{},parentView,parentIndex,ChangeDetectionStrategy.CheckAlways,nodeDebugInfos_AppComponentHost0) {
    renderType ??= import20.appViewUtils.createRenderType('',ViewEncapsulation.Emulated,styles_AppComponentHost);
    setupComponentType(renderType);
  }
  dynamic get _defaultPopupPositions_0_3 {
    dbg(0,0,0);
    if ((this.__defaultPopupPositions_0_3 == null)) { (__defaultPopupPositions_0_3 = import39.inlinePositions); }
    return this.__defaultPopupPositions_0_3;
  }
  import37.Angular2ManagedZone get _ManagedZone_0_4 {
    dbg(0,0,0);
    if ((this.__ManagedZone_0_4 == null)) { (__ManagedZone_0_4 = new import37.Angular2ManagedZone(this.injectorGet(import40.NgZone,this.parentIndex))); }
    return this.__ManagedZone_0_4;
  }
  dynamic get _Window_0_5 {
    dbg(0,0,0);
    if ((this.__Window_0_5 == null)) { (__Window_0_5 = import41.getWindow()); }
    return this.__Window_0_5;
  }
  dynamic get _DomService_0_6 {
    dbg(0,0,0);
    if ((this.__DomService_0_6 == null)) { (__DomService_0_6 = import42.createDomService(this.injectorGet(import26.DomService,this.parentIndex,null),this.injectorGet(import43.Disposer,this.parentIndex,null),this._ManagedZone_0_4,this._Window_0_5)); }
    return this.__DomService_0_6;
  }
  import30.AcxImperativeViewUtils get _AcxImperativeViewUtils_0_7 {
    dbg(0,0,0);
    if ((this.__AcxImperativeViewUtils_0_7 == null)) { (__AcxImperativeViewUtils_0_7 = new import30.AcxImperativeViewUtils(this.injectorGet(import44.DynamicComponentLoader,this.parentIndex),this._DomService_0_6)); }
    return this.__AcxImperativeViewUtils_0_7;
  }
  dynamic get _Document_0_8 {
    dbg(0,0,0);
    if ((this.__Document_0_8 == null)) { (__Document_0_8 = import41.getDocument()); }
    return this.__Document_0_8;
  }
  import31.DomRuler get _DomRuler_0_9 {
    dbg(0,0,0);
    if ((this.__DomRuler_0_9 == null)) { (__DomRuler_0_9 = new import31.DomRuler(this._Document_0_8,this._DomService_0_6)); }
    return this.__DomRuler_0_9;
  }
  dynamic get _overlayContainerName_0_10 {
    dbg(0,0,0);
    if ((this.__overlayContainerName_0_10 == null)) { (__overlayContainerName_0_10 = import45.getDefaultContainerName(this.injectorGet(import32.overlayContainerName,this.parentIndex,null))); }
    return this.__overlayContainerName_0_10;
  }
  dynamic get _overlayContainerParent_0_11 {
    dbg(0,0,0);
    if ((this.__overlayContainerParent_0_11 == null)) { (__overlayContainerParent_0_11 = import45.getOverlayContainerParent(this._Document_0_8,this.injectorGet(import32.overlayContainerParent,this.parentIndex,null))); }
    return this.__overlayContainerParent_0_11;
  }
  dynamic get _overlayContainerToken_0_12 {
    dbg(0,0,0);
    if ((this.__overlayContainerToken_0_12 == null)) { (__overlayContainerToken_0_12 = import45.getDefaultContainer(this._overlayContainerName_0_10,this._overlayContainerParent_0_11,this.injectorGet(import32.overlayContainerToken,this.parentIndex,null))); }
    return this.__overlayContainerToken_0_12;
  }
  dynamic get _overlaySyncDom_0_13 {
    dbg(0,0,0);
    if ((this.__overlaySyncDom_0_13 == null)) { (__overlaySyncDom_0_13 = true); }
    return this.__overlaySyncDom_0_13;
  }
  import33.OverlayStyleConfig get _OverlayStyleConfig_0_14 {
    dbg(0,0,0);
    if ((this.__OverlayStyleConfig_0_14 == null)) { (__OverlayStyleConfig_0_14 = new import33.OverlayStyleConfig(this._Document_0_8)); }
    return this.__OverlayStyleConfig_0_14;
  }
  import34.ZIndexer get _ZIndexer_0_15 {
    dbg(0,0,0);
    if ((this.__ZIndexer_0_15 == null)) { (__ZIndexer_0_15 = new import34.ZIndexer()); }
    return this.__ZIndexer_0_15;
  }
  import32.OverlayDomRenderService get _OverlayDomRenderService_0_16 {
    dbg(0,0,0);
    if ((this.__OverlayDomRenderService_0_16 == null)) { (__OverlayDomRenderService_0_16 = new import32.OverlayDomRenderService(this._OverlayStyleConfig_0_14,this._overlayContainerToken_0_12,this._overlayContainerName_0_10,this._DomRuler_0_9,this._DomService_0_6,this._AcxImperativeViewUtils_0_7,this._overlaySyncDom_0_13,this._ZIndexer_0_15)); }
    return this.__OverlayDomRenderService_0_16;
  }
  import38.OverlayDomService get _OverlayService_0_17 {
    dbg(0,0,0);
    if ((this.__OverlayService_0_17 == null)) { (__OverlayService_0_17 = new import38.OverlayDomService(this.injectorGet(import40.NgZone,this.parentIndex),this._overlaySyncDom_0_13,this._OverlayDomRenderService_0_16,this.injectorGet(import35.OverlayService,this.parentIndex,null))); }
    return this.__OverlayService_0_17;
  }
  import36.DomPopupSourceFactory get _DomPopupSourceFactory_0_18 {
    dbg(0,0,0);
    if ((this.__DomPopupSourceFactory_0_18 == null)) { (__DomPopupSourceFactory_0_18 = new import36.DomPopupSourceFactory(this._Window_0_5,this._DomRuler_0_9)); }
    return this.__DomPopupSourceFactory_0_18;
  }
  import28.PopupService get _PopupService_0_19 {
    dbg(0,0,0);
    if ((this.__PopupService_0_19 == null)) { (__PopupService_0_19 = new import28.PopupService(this._defaultPopupPositions_0_3,this._OverlayService_0_17,this._ZIndexer_0_15)); }
    return this.__PopupService_0_19;
  }
  ComponentRef build() {
    final _ctx = ctx;
    _compView_0 = new ViewAppComponent0(this,0);
    rootEl = _compView_0.rootEl;
    dbgIdx(rootEl,0);
    _AppComponent_0_2 = new import10.AppComponent();
    _compView_0.create(_AppComponent_0_2,projectableNodes);
    init([rootEl],const [],[rootEl]);
    return new ComponentRef(0,this,rootEl,_AppComponent_0_2);
  }
  dynamic injectorGetInternal(dynamic token,int nodeIndex,dynamic notFoundResult) {
    if ((identical(token, import10.AppComponent) && (0 == nodeIndex))) { return _AppComponent_0_2; }
    if ((identical(token, import28.defaultPopupPositions) && (0 == nodeIndex))) { return _defaultPopupPositions_0_3; }
    if ((identical(token, import29.ManagedZone) && (0 == nodeIndex))) { return _ManagedZone_0_4; }
    if ((identical(token, Window) && (0 == nodeIndex))) { return _Window_0_5; }
    if ((identical(token, import26.DomService) && (0 == nodeIndex))) { return _DomService_0_6; }
    if ((identical(token, import30.AcxImperativeViewUtils) && (0 == nodeIndex))) { return _AcxImperativeViewUtils_0_7; }
    if ((identical(token, Document) && (0 == nodeIndex))) { return _Document_0_8; }
    if ((identical(token, import31.DomRuler) && (0 == nodeIndex))) { return _DomRuler_0_9; }
    if ((identical(token, import32.overlayContainerName) && (0 == nodeIndex))) { return _overlayContainerName_0_10; }
    if ((identical(token, import32.overlayContainerParent) && (0 == nodeIndex))) { return _overlayContainerParent_0_11; }
    if ((identical(token, import32.overlayContainerToken) && (0 == nodeIndex))) { return _overlayContainerToken_0_12; }
    if ((identical(token, import32.overlaySyncDom) && (0 == nodeIndex))) { return _overlaySyncDom_0_13; }
    if ((identical(token, import33.OverlayStyleConfig) && (0 == nodeIndex))) { return _OverlayStyleConfig_0_14; }
    if ((identical(token, import34.ZIndexer) && (0 == nodeIndex))) { return _ZIndexer_0_15; }
    if ((identical(token, import32.OverlayDomRenderService) && (0 == nodeIndex))) { return _OverlayDomRenderService_0_16; }
    if ((identical(token, import35.OverlayService) && (0 == nodeIndex))) { return _OverlayService_0_17; }
    if ((identical(token, import36.DomPopupSourceFactory) && (0 == nodeIndex))) { return _DomPopupSourceFactory_0_18; }
    if ((identical(token, import28.PopupService) && (0 == nodeIndex))) { return _PopupService_0_19; }
    return notFoundResult;
  }
  void detectChangesInternal() {
    bool firstCheck = identical(this.cdState, ChangeDetectorState.NeverChecked);
    final _ctx = ctx;
    if ((firstCheck && !import20.AppViewUtils.throwOnChanges)) { _AppComponent_0_2.ngOnInit(); }
    _compView_0.detectChanges();
  }
  void destroyInternal() {
    _compView_0.destroy();
  }
}
AppView viewFactory_AppComponentHost0(AppView<dynamic> parentView,num parentIndex) {
  return new ViewAppComponentHost0(parentView,parentIndex);
}
const ComponentFactory AppComponentNgFactory = const ComponentFactory('my-app',viewFactory_AppComponentHost0,import10.AppComponent,_METADATA);
const _METADATA = const <dynamic>[AppComponent, const <dynamic>[]];
var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(AppComponent, new _ngRef.ReflectionInfo(
const <dynamic>[AppComponentNgFactory],
const [],
() => new AppComponent(),
const <dynamic>[OnInit])
)
;
i0.initReflector();
i1.initReflector();
}
