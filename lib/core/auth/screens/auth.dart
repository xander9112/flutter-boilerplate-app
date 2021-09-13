import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate_app/config/config.dart';
import 'package:flutter_boilerplate_app/constants/constants.dart';
import 'package:flutter_boilerplate_app/core/core.dart';
import 'package:flutter_boilerplate_app/widgets/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:reactive_forms/reactive_forms.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  late FormGroup form;

  @override
  void initState() {
    form = FormGroup(<String, AbstractControl<dynamic>>{
      'login': FormControl<String>(
        validators: <ValidatorFunction>[Validators.required],
      ),
      'password': FormControl<String>(
        validators: <ValidatorFunction>[Validators.required],
      ),
    });

    super.initState();
  }

  void onPressed() {
    form.markAllAsTouched();
    // if (GetIt.I<ThemeCubit>().state.themeMode == ThemeMode.light) {
    //   GetIt.I<ThemeCubit>().setDarkTheme();
    // } else {
    //   GetIt.I<ThemeCubit>().setLightTheme();
    // }

    if (form.valid) {
      GetIt.I<AuthCubit>().login(form.value);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(EdgeInsetsParams.defaultEdge),
        child: SafeArea(
          child: ReactiveForm(
            formGroup: form,
            child: Column(
              children: <Widget>[
                const Logo(),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: EdgeInsetsParams.defaultEdge / 2,
                  ),
                  child: Text(
                    tr('auth.welcomeText'),
                    style: TextStyles.headeing4,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: EdgeInsetsParams.defaultEdge * 2,
                  ),
                  child: Text(
                    tr('auth.continueText'),
                    style: TextStyles.bodyTextNormal.copyWith(
                      color: ThemeConfig.grey,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    UiTextField<String>(
                      prefixIcon: const Icon(Icons.mail_outline),
                      labelText: tr('auth.login'),
                      formControl: form.control('login') as FormControl<String>,
                    ),
                    UiTextField<String>(
                      prefixIcon: const Icon(Icons.lock_outline),
                      labelText: tr('auth.password'),
                      obscureText: true,
                      formControl:
                          form.control('password') as FormControl<String>,
                    ),
                  ],
                ),
                UiButton(
                  text: tr('auth.signIn'),
                  onPressed: onPressed,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
