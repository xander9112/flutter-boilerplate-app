import 'dart:async';

class DialogService {
  late Function({
    required int dialogType,
    required Completer<dynamic> completer,
    String? title,
    String? body,
  }) _showDialogListener;

  late Completer<dynamic> _dialogCompleter;

  // ignore: use_setters_to_change_properties
  /// Registers a callback function. Typically to show the dialog
  void registerDialogListener(
    Function({
      required int dialogType,
      required Completer<dynamic> completer,
      String? title,
      String? body,
    })
        showDialogListener,
  ) {
    _showDialogListener = showDialogListener;
  }

  /// Calls the dialog listener and
  /// returns a Future that will wait for dialogComplete.
  Future<dynamic> showDialog({
    required int dialogType,
    String? title,
    String? body,
  }) {
    _dialogCompleter = Completer<dynamic>();

    _showDialogListener(
      dialogType: dialogType,
      completer: _dialogCompleter,
      title: title,
      body: body,
    );

    return _dialogCompleter.future;
  }

  /// Completes the _dialogCompleter to resume the Future's execution call
  void dialogComplete() {
    _dialogCompleter.complete();
  }
}
