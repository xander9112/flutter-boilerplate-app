import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlatformPage<T> extends Page<T> {
  PlatformPage(
    this.child,
    this.path, {
    this.title,
    this.fullscreenDialog = false,
  }) : super(key: ValueKey<String>(path));

  final Widget child;
  final String path;
  final String? title;
  final bool fullscreenDialog;

  @override
  Route<T> createRoute(BuildContext context) {
    // if (Platform.isIOS) {
    //   return CupertinoPageRoute<T>(
    //     builder: (_) => child,
    //     settings: this,
    //     title: title,
    //     fullscreenDialog: fullscreenDialog,
    //   );
    // }

    return MyCustomRoute<T>(
      builder: (_) => child,
      settings: this,
      fullscreenDialog: fullscreenDialog,
    );
  }
}

class MyCustomRoute<T> extends MaterialPageRoute<T> {
  MyCustomRoute({
    required WidgetBuilder builder,
    required RouteSettings settings,
    required bool fullscreenDialog,
  }) : super(
          builder: builder,
          settings: settings,
          fullscreenDialog: fullscreenDialog,
        );

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return FadeTransition(opacity: animation, child: child);
  }
}
