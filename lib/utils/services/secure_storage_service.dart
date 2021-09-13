import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

/// We do not store user credentials, API tokens, secret API keys
/// in local storage, for that we make use of flutter_secure_storage
/// which stores data in the Android Keystore and Apple keychain with
/// platform-specific encryption technique. In this file, there will be
/// getters and setters for each and every data to be stored in platform
/// secure storage.

@injectable
class SecureStorageService {
  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();

  Future<bool> get hasToken async =>
      (await _secureStorage.read(key: 'token')) != null;

  Future<void> setToken(String value) {
    return _secureStorage.write(key: 'token', value: value);
  }

  Future<void> removeToken() {
    return _secureStorage.delete(key: 'token');
  }

  Future<String?> getToken() {
    return _secureStorage.read(key: 'token');
  }

  Future<String?> getRefreshToken() {
    return _secureStorage.read(key: 'refreshToken');
  }

  Future<bool> get hasPinCode async =>
      (await _secureStorage.read(key: 'pinCode')) != null;

  Future<void> setPinCode(String value) {
    return _secureStorage.write(key: 'pinCode', value: value);
  }

  Future<void> removePinCode() {
    return _secureStorage.delete(key: 'pinCode');
  }

  Future<bool> comparePinCode(String pinCode) async {
    final String? _pinCode = await _secureStorage.read(key: 'pinCode');

    return _pinCode == pinCode;
  }
}
