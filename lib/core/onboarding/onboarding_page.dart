import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_boilerplate_app/constants/constants.dart';
import 'package:flutter_boilerplate_app/core/core/core.dart';
import 'package:flutter_boilerplate_app/widgets/widgets.dart';

class OnboardingPage extends PlatformPage<_OnboardingScreen> {
  OnboardingPage() : super(const _OnboardingScreen(), RoutePath.onboarding);
}

class _OnboardingScreen extends StatelessWidget {
  const _OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('onboarding'),
            ElevatedButton(
              onPressed: GetIt.I<CoreCubit>().skipOnboarding,
              child: const Text('Skip'),
            ),
          ],
        ),
      ),
    );
  }
}
