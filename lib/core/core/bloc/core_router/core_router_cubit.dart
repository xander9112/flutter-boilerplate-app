import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'core_router_state.dart';
part 'core_router_cubit.freezed.dart';

class CoreRouterCubit extends Cubit<CoreRouterState> {
  CoreRouterCubit() : super(const CoreRouterState.splash());

  void navigateToSplash() {
    emit(const CoreRouterState.splash());
  }

  void navigateToOnboarding() {
    emit(const CoreRouterState.onboarding());
  }

  void navigateToAuth() {
    emit(const CoreRouterState.auth());
  }

  

  void navigateToMain() {
    emit(const CoreRouterState.main());
  }
}
