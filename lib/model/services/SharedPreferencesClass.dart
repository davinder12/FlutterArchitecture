import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesClass {

  static const String UserName = "Name";
  static const String Id = "Id";
  static const String PhoneNumber ="PhoneNumber";

  SharedPreferences? _prefs;

  SharedPreferencesClass() {
    _initPrefs();
  }

  Future<void> _initPrefs() async {
    _prefs = await SharedPreferences.getInstance();
  }

  String? getString(String key) {
    return _prefs?.getString(key);
  }
  void putString(String key,String? value){
    _prefs?.setString(key, value??"");
  }


// Add other methods to interact with SharedPreferences here
}
