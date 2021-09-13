import 'package:flutter/widgets.dart';

import 'core_router_delegate.dart';

class CoreBackButtonDispatcher extends RootBackButtonDispatcher {
  CoreBackButtonDispatcher(this._routerDelegate) : super();

  final CoreRouterDelegate _routerDelegate;

  @override
  Future<bool> didPopRoute() {
    return _routerDelegate.popRoute();
  }
}
