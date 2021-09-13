import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_boilerplate_app/core/core.dart';
import 'package:flutter_boilerplate_app/utils/services/secure_storage_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'core_state.dart';
part 'core_cubit.freezed.dart';

@singleton
class CoreCubit extends Cubit<CoreState> {
  CoreCubit(
    this.secureStorageService,
    this.sharedPreferences,
    this.authCubit,
  ) : super(const CoreState.initial());

  late SecureStorageService secureStorageService;
  late SharedPreferences sharedPreferences;
  late AuthCubit authCubit;

  Future<void> _checkAuth() async {
    final bool hasToken = await secureStorageService.hasToken;

    if (hasToken) {
      _initAuth(hasToken);
    } else {
      _checkOnboarding();
    }
  }

  void _initAuth([bool? hasToken]) {
    authCubit.init(hasToken);

    emit(const CoreState.auth());
  }

  void _checkOnboarding() {
    final bool shouldShowOnboarding =
        sharedPreferences.getBool('shouldShowOnboarding') ?? true;

    if (shouldShowOnboarding) {
      emit(const CoreState.onboarding());
    } else {
      _initAuth();
    }
  }

  Future<void> init() async {
    await _checkAuth();
  }

  void skipOnboarding() {
    sharedPreferences.setBool('shouldShowOnboarding', false);

    _initAuth();
  }

  void verify() {
    emit(const CoreState.main());
  }
}
