import 'dart:convert';
import 'package:http/http.dart' as http;
import '../api/app_exception.dart';

abstract class BaseService {
  final String baseUrl = "https://www.takerway.com";
  final String LoginUrl = "/portal/api/user_login.php";
  final String baseUrl1 = "https://api.github.com/repositories/1300192/issues?";

  Future<dynamic> loginApi(String emailId,String password,String deviceType,String deviceToken);


  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        throw BadRequestException(response.body.toString());
      case 401:
      case 403:
        throw UnauthorisedException(response.body.toString());
      case 500:
      default:
        throw FetchDataException(
            'Error occured while communication with server' +
                ' with status code : ${response.statusCode}');
    }
  }
}

