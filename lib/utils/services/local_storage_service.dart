import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// In this file, we write all the code needed to store and get data from
/// the local storage using the plugin shared_preferences.
/// In this file, there will be getters and setters for each and every
/// data to be stored in the local storage.

@module
abstract class LocalStorageService {
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
}
