import 'package:flutter/material.dart';

import '../core.dart';

class CoreNavigationParser extends RouteInformationParser<CoreRouterState> {
  @override
  Future<CoreRouterState> parseRouteInformation(
      RouteInformation routeInformation) async {
    return const CoreRouterState.splash();
  }
}
