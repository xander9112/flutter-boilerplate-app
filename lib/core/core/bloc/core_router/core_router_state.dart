part of 'core_router_cubit.dart';

@freezed
class CoreRouterState with _$CoreRouterState {
  const factory CoreRouterState.splash() = _Splash;
  const factory CoreRouterState.onboarding() = _Onboarding;
  const factory CoreRouterState.auth() = _Auth;
  const factory CoreRouterState.main() = _Main;
}
