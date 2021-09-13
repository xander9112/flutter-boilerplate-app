import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<T?> showErrorDialog<T>(
  BuildContext context, {
  String? title,
  String? body,
}) {
  return showDialog<T>(
    context: context,
    builder: (BuildContext context) {
      if (Platform.isIOS) {
        return CupertinoAlertDialog(
          title: Text(title ?? ''),
          content: Text(body ?? ''),
          actions: <Widget>[
            CupertinoDialogAction(
              isDefaultAction: true,
              onPressed: Navigator.of(context).pop,
              child: const Text('Ok'),
            ),
          ],
        );
      }

      return AlertDialog(
        title: Text(title ?? ''),
        content: Text(body ?? ''),
        actions: <Widget>[
          TextButton(
            onPressed: Navigator.of(context).pop,
            child: const Text('Ok'),
          ),
        ],
      );
    },
  );
}
