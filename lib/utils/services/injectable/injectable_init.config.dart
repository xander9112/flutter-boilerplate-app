// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i4;

import '../../../core/auth/bloc/pin_code/pin_code_cubit.dart' as _i7;
import '../../../core/core.dart' as _i6;
import '../../../core/core/bloc/cubit/core_cubit.dart' as _i5;
import '../../utils.dart' as _i8;
import '../local_storage_service.dart' as _i9;
import '../secure_storage_service.dart'
    as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final localStorageService = _$LocalStorageService();
  gh.factory<_i3.SecureStorageService>(() => _i3.SecureStorageService());
  await gh.factoryAsync<_i4.SharedPreferences>(() => localStorageService.prefs,
      preResolve: true);
  gh.singleton<_i5.CoreCubit>(_i5.CoreCubit(get<_i3.SecureStorageService>(),
      get<_i4.SharedPreferences>(), get<_i6.AuthCubit>()));
  gh.singleton<_i7.PinCodeCubit>(_i7.PinCodeCubit(
      get<_i4.SharedPreferences>(), get<_i8.SecureStorageService>()));
  return get;
}

class _$LocalStorageService extends _i9.LocalStorageService {}
