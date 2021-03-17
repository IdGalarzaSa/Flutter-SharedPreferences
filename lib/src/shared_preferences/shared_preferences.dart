import 'package:shared_preferences/shared_preferences.dart';

class UserSharedPreferences {
  static final UserSharedPreferences _userSharedPreferencesInstance =
      new UserSharedPreferences._();

  UserSharedPreferences._();

  factory UserSharedPreferences() {
    return _userSharedPreferencesInstance;
  }

  SharedPreferences prefs;

  initPrefs() async {
    prefs = await SharedPreferences.getInstance();
  }

  // Secondary Color
  bool get secondaryColor {
    return prefs.getBool(UserPreferencesKeys.secondaryColorKey) ?? false;
  }

  set secondaryColor(bool newValue) {
    prefs.setBool(UserPreferencesKeys.secondaryColorKey, newValue);
  }

  // Gender
  int get gender {
    return prefs.getInt(UserPreferencesKeys.genderKey) ?? 1;
  }

  set gender(int newValue) {
    prefs.setInt(UserPreferencesKeys.genderKey, newValue);
  }

  // User Name
  String get userName {
    return prefs.getString(UserPreferencesKeys.userNameKey) ?? "";
  }

  set userName(String newValue) {
    prefs.setString(UserPreferencesKeys.userNameKey, newValue);
  }
}

class UserPreferencesKeys {
  static final secondaryColorKey = "SECONDARY_COLOR";
  static final genderKey = "GENDER";
  static final userNameKey = "USER_NAME";
}
