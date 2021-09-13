import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_boilerplate_app/constants/constants.dart';
import 'package:flutter_boilerplate_app/core/core.dart';
import 'package:flutter_boilerplate_app/widgets/widgets.dart';

class SplashPage extends PlatformPage<_SplashScreen> {
  SplashPage() : super(_SplashScreen(), RoutePath.initial);
}

class _SplashScreen extends StatelessWidget {
  _SplashScreen({Key? key}) : super(key: key) {
    GetIt.I<CoreCubit>().init();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Logo()));
  }
}
