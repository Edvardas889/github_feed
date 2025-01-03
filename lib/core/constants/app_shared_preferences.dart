import 'package:shared_preferences/shared_preferences.dart';

class AppSharedPreferences {
  static const _keyAuthToken = "_keyAuthToken";

  final SharedPreferences _pref;

  AppSharedPreferences(this._pref);

  String? get authToken => _pref.getString(_keyAuthToken);

  void setAuthToken(String value) {
    _pref.setString(_keyAuthToken, value);
  }

  Future<bool> deleteAuthToken() async {
    return await _pref.remove(_keyAuthToken);
  }
}
