import 'package:easy_localization/easy_localization.dart';
import 'package:logger/logger.dart';
import 'package:reactive_forms/reactive_forms.dart';

Logger logger = Logger();

class ReactiveErrors {
  static Map<String, Function> get errorMethods => <String, Function>{
        'maxLength': maxLength,
        'minLength': minLength,
        'min': min,
        'max': max,
        'email': email,
      };

  static Map<String, String> validationMessages(FormControl<dynamic> control) {
    return control.errors.map((String key, dynamic value) {
      if (value == true) {
        return MapEntry<String, String>(key, tr('validationErrors.$key'));
      }

      if (errorMethods[key] != null) {
        return MapEntry<String, String>(key, tr(errorMethods[key]!(value)));
      }

      return MapEntry<String, String>(
          key, 'ReactiveErrors: method: $key not found');
    });
  }

  static String? getErrorString(Map<String, Object> errors) {
    if (errors.entries.isNotEmpty) {
      final String firstKey = errors.keys.first;
      final dynamic firstValue = errors.values.first;

      if (firstValue == true) {
        return tr('validationErrors.$firstKey');
      }

      if (errorMethods[firstKey] != null) {
        return errorMethods[firstKey]!(firstValue).toString();
      } else {
        logger.e('ReactiveErrors: method: $firstKey not found');
      }

      return errors.entries.first.value.toString();
    }

    return null;
  }

  static String maxLength(Map<String, Object> variables) {
    return tr('validationErrors.maxLength', namedArgs: <String, String>{
      'requiredLength': variables['requiredLength'].toString(),
      'actualLength': variables['actualLength'].toString(),
    });
  }

  static String minLength(Map<String, Object> variables) {
    return tr('validationErrors.minLength', namedArgs: <String, String>{
      'requiredLength': variables['requiredLength'].toString(),
      'actualLength': variables['actualLength'].toString(),
    });
  }

  static String min(Map<String, dynamic> variables) {
    return tr('validationErrors.min', namedArgs: <String, String>{
      'requiredLength': variables['min'].toString(),
      'actualLength': variables['actual'].toString(),
    });
  }

  static String max(Map<String, dynamic> variables) {
    return tr('validationErrors.max', namedArgs: <String, String>{
      'requiredLength': variables['max'].toString(),
      'actualLength': variables['actual'].toString(),
    });
  }

  static String email(String email) {
    return tr('validationErrors.email');
  }
}
