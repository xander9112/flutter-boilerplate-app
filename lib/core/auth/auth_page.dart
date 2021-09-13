import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate_app/constants/constants.dart';
import 'package:flutter_boilerplate_app/core/auth/screens/auth.dart';
import 'package:flutter_boilerplate_app/core/auth/screens/screens.dart';
import 'package:flutter_boilerplate_app/widgets/widgets.dart';
import 'package:get_it/get_it.dart';

import 'auth.dart';

class AuthPage extends PlatformPage<_AuthScreen> {
  AuthPage() : super(const _AuthScreen(), RoutePath.auth);
}

class _AuthScreen extends StatelessWidget {
  const _AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      bloc: GetIt.I<AuthCubit>(),
      builder: (BuildContext context, AuthState state) => state.maybeMap(
        orElse: () => const Scaffold(),
        unAuth: (_) => const AuthScreen(),
        unVerified: (_) => const VerifyScreen(),
      ),
    );
  }
}
