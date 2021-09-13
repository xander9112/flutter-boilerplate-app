import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_boilerplate_app/constants/constants.dart';
import 'package:flutter_boilerplate_app/core/core.dart';
import 'package:flutter_boilerplate_app/widgets/widgets.dart';

class MainPage extends PlatformPage<_MainScreen> {
  MainPage() : super(const _MainScreen(), RoutePath.onboarding);
}

class _MainScreen extends StatelessWidget {
  const _MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('main'),
            ElevatedButton(
              onPressed: GetIt.I<AuthCubit>().logout,
              child: const Text('Logout'),
            )
          ],
        ),
      ),
    );
  }
}
