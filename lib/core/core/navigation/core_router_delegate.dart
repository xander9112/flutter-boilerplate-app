import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_boilerplate_app/core/core.dart';
import 'package:flutter_boilerplate_app/utils/utils.dart';

import '../core.dart';

class CoreRouterDelegate extends RouterDelegate<CoreRouterState>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<CoreRouterState> {
  CoreRouterDelegate() : navigatorKey = GlobalKey<NavigatorState>();

  @override
  final GlobalKey<NavigatorState>? navigatorKey;

  final CoreRouterCubit _bloc = GetIt.I<CoreRouterCubit>();

  List<Page<dynamic>> getPages(
    CoreRouterState state, [
    List<Page<dynamic>>? pages,
  ]) {
    final List<Page<dynamic>> _pages = pages ?? <Page<dynamic>>[];

    state.maybeWhen(
      onboarding: () => _pages.add(OnboardingPage()),
      auth: () => _pages.add(AuthPage()),
      main: () => _pages.add(MainPage()),
      orElse: () => _pages.add(SplashPage()),
    );

    return _pages;
  }

  @override
  Widget build(BuildContext context) {
    return DialogManager(
      child: MultiBlocListener(
        // ignore: always_specify_types
        listeners: [
          BlocListener<CoreRouterCubit, CoreRouterState>(
            bloc: _bloc,
            listener: (_, CoreRouterState state) => notifyListeners(),
          ),
          BlocListener<CoreCubit, CoreState>(
            bloc: GetIt.I<CoreCubit>(),
            listener: (_, CoreState state) {
              state.when(
                initial: _bloc.navigateToSplash,
                auth: _bloc.navigateToAuth,
                onboarding: _bloc.navigateToOnboarding,
                main: _bloc.navigateToMain,
              );
            },
          ),
          BlocListener<AuthCubit, AuthState>(
            bloc: GetIt.I<AuthCubit>(),
            listener: (_, AuthState state) {
              state.maybeWhen(
                orElse: () {},
                verified: GetIt.I<CoreCubit>().verify,
                logout: GetIt.I<CoreCubit>().init,
              );
            },
          ),
        ],
        child: Navigator(
          key: GetIt.I<NavigationService>().navigatorKey,
          pages: getPages(_bloc.state),
          onPopPage: (Route<dynamic> route, dynamic result) =>
              _onPopPage(route: route, result: result),
        ),
      ),
    );
  }

  @override
  Future<void> setNewRoutePath(CoreRouterState configuration) async {
    notifyListeners();
  }

  bool _onPopPage({Route<dynamic>? route, dynamic result}) {
    if (_bloc.state == const CoreRouterState.splash() ||
        route != null && !route.didPop(result)) {
      return false;
    }

    notifyListeners();

    return true;
  }
}
