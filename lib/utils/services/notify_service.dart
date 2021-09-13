import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'navigation_service.dart';

class NotifyService {
  static BuildContext? get _context =>
      GetIt.I<NavigationService>().navigatorKey.currentState?.context;

  static Future<T?>? _showFlash<T>({
    required FlashBuilder<T> builder,
    Duration? duration,
  }) {
    if (_context != null) {
      return showFlash<T>(
        context: _context!,
        duration: duration,
        builder: builder,
      );
    }
  }

  static Future<T?>? showDefaultNotify<T>({Duration? duration}) {
    return _showFlash<T>(
      duration: duration,
      builder: (BuildContext context, FlashController<T> controller) {
        return Flash<T>(
          controller: controller,
          behavior: FlashBehavior.floating,
          position: FlashPosition.bottom,
          boxShadows: kElevationToShadow[4],
          horizontalDismissDirection: HorizontalDismissDirection.horizontal,
          child: FlashBar(
            content: const Text('This is a basic flash'),
          ),
        );
      },
    );
  }

  static Future<T?>? showErrorNotify<T>(String contentText,
      {Duration? duration}) {
    return _showFlash<T>(
      duration: duration ?? const Duration(seconds: 2),
      builder: (BuildContext context, FlashController<T> controller) {
        return Flash<T>(
          controller: controller,
          behavior: FlashBehavior.floating,
          position: FlashPosition.bottom,
          boxShadows: kElevationToShadow[4],
          horizontalDismissDirection: HorizontalDismissDirection.horizontal,
          child: FlashBar(
            indicatorColor: Colors.red,
            content: Text(
              contentText,
              style: const TextStyle(color: Colors.red),
            ),
          ),
        );
      },
    );
  }

  static Future<T?>? showSuccessNotify<T>(String contentText,
      {Duration? duration}) {
    return _showFlash<T>(
      duration: duration ?? const Duration(seconds: 2),
      builder: (BuildContext context, FlashController<T> controller) {
        return Flash<T>(
          controller: controller,
          behavior: FlashBehavior.floating,
          position: FlashPosition.bottom,
          boxShadows: kElevationToShadow[4],
          horizontalDismissDirection: HorizontalDismissDirection.horizontal,
          child: FlashBar(
            indicatorColor: Colors.green,
            content: Text(
              contentText,
              style: const TextStyle(color: Colors.green),
            ),
          ),
        );
      },
    );
  }
}
