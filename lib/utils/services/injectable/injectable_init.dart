import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_boilerplate_app/config/config.dart';
import 'package:flutter_boilerplate_app/core/core.dart';

import '../services.dart';
import 'injectable_init.config.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
Future<GetIt> configureDependencies() async {
  getIt.registerSingleton<ThemeCubit>(ThemeCubit());
  getIt.registerSingleton<AuthCubit>(AuthCubit());
  getIt.registerSingleton<CoreRouterCubit>(CoreRouterCubit());
  getIt.registerSingleton<NavigationService>(NavigationService());
  getIt.registerSingleton<NotifyService>(NotifyService());
  getIt.registerSingleton<DialogService>(DialogService());

  return $initGetIt(getIt);
}
