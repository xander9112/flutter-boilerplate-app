import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../utils.dart';
import 'dialogs/dialogs.dart';

class DialogManager extends StatefulWidget {
  const DialogManager({required this.child, Key? key}) : super(key: key);

  @override
  _DialogManagerState createState() => _DialogManagerState();

  final Widget child;
}

class _DialogManagerState extends State<DialogManager> {
  final DialogService _dialogService = GetIt.I<DialogService>();

  late StreamSubscription<ConnectivityResult> subscription;
  ConnectivityResult? _connectivityResult;

  BuildContext get _context =>
      GetIt.I<NavigationService>().navigatorKey.currentState!.context;

  @override
  void initState() {
    super.initState();
    _dialogService.registerDialogListener(_showDialog);

    _checkConnect();
  }

  Future<void> _checkConnect() async {
    subscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
      if (_connectivityResult != null) {
        if (result == ConnectivityResult.none) {
          NotifyService.showErrorNotify(
            tr('errors.connectivity'),
            duration: const Duration(seconds: 3),
          );
        } else {
          NotifyService.showSuccessNotify(
            tr('success.connectivity'),
            duration: const Duration(seconds: 3),
          );
        }
      }

      setState(() {
        _connectivityResult = result;
      });
    });
  }

  @override
  void dispose() {
    subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }

  Future<dynamic> _showDialog({
    required int dialogType,
    required Completer<dynamic> completer,
    String? title,
    String? body,
  }) async {
    dynamic result;

    switch (dialogType) {
      case DialogTypes.errorDialog:
        result = await showErrorDialog(_context, title: title, body: body);
        break;
      case DialogTypes.confirmDialog:
        result = await showConfirmDialog(_context, title: title, body: body);
        break;
      case DialogTypes.infoDialog:
        result = await showInfoDialog(_context, title: title, body: body);
        break;
      default:
    }

    return completer.complete(result);
  }
}
