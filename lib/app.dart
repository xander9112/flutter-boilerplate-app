import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'config/config.dart';
import 'constants/constants.dart';
import 'core/core.dart';

class FlutterBoilerplateAppApp extends StatelessWidget {
  const FlutterBoilerplateAppApp({Key? key}) : super(key: key);

  CoreRouterDelegate get coreRouterDelegate => CoreRouterDelegate();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      bloc: GetIt.I<ThemeCubit>(),
      builder: (BuildContext context, ThemeState state) {
        return MaterialApp.router(
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          title: AppConstants.projectName,
          theme: themeLight,
          darkTheme: themeDark,
          themeMode: state.themeMode,
          debugShowCheckedModeBanner: false,
          routeInformationParser: CoreNavigationParser(),
          routerDelegate: coreRouterDelegate,
          backButtonDispatcher: CoreBackButtonDispatcher(coreRouterDelegate),
        );
      },
    );
  }
}

// class _MyHomePage extends StatefulWidget {
//   const _MyHomePage({required this.title, Key? key}) : super(key: key);

//   final String title;

//   @override
//   State<_MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<_MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             ...<ThemeMode>[ThemeMode.dark, ThemeMode.light, ThemeMode.system]
//                 .map((ThemeMode e) {
//               return ElevatedButton(
//                 onPressed: () {
//                   // context.setLocale(e);

//                   GetIt.I<ThemeCubit>().setThemeMode(e);
//                 },
//                 child: Text(
//                   e.toString(),
//                 ),
//               );
//             })
//           ],
//         ),
//       ),
//     );
//   }
// }
