import 'package:flutter/material.dart';
import 'package:responsiveuiflutter/model/api/api_response.dart';
import 'package:responsiveuiflutter/model/api/apidata/LoginApiResponse.dart';
import 'package:responsiveuiflutter/model/repository/LoginRepository.dart';
import 'package:responsiveuiflutter/model/services/SharedPreferencesClass.dart';


class LoginScreenModel with ChangeNotifier {

  SharedPreferencesClass  preferenceService = SharedPreferencesClass();
  ApiResponse _apiResponse = ApiResponse.initial('Empty data');

  String _emailId = '';
  String _password ='';

  ApiResponse get response {
    return _apiResponse;
  }

  set emailId(String emailid){
    _emailId = emailid;
  }
  set password(String password){
    _password = password;
  }

  void filterMethod(Function(bool, String?) callBack) {
    if (_emailId.isEmpty ||
        !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
            caseSensitive: false,
            multiLine: false)
            .hasMatch(_emailId ?? "")) {
      callBack(false, "Please enter valid email");
    } else if (_password.isEmpty ||
        _password.length < 5) {
      callBack(false, "Password should contain at least 5 characters.");
    } else {
       callBack(true, '');
    }
  }

  /// Call the media service and gets the data of requested media data of
  /// an artist.
  Future<void> loginApiData() async {
    _apiResponse = ApiResponse.loading('Login please wait...');
    notifyListeners();
    try {
     LoginApiResponse apiResponse =  await LoginRepository().authentcationApi(_emailId,_password,'0','');
     preferenceService.putString(SharedPreferencesClass.Id, apiResponse.body?.id);
     preferenceService.putString(SharedPreferencesClass.PhoneNumber, apiResponse.body?.name);
     _apiResponse = ApiResponse.completed(apiResponse);
    } catch (e) {
      _apiResponse = ApiResponse.error(e.toString());
    }
    notifyListeners();
  }

  void resetApiResponse(){
    _apiResponse = ApiResponse.initial('');
  }
}