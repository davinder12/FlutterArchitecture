import 'dart:io';
import '../api/app_exception.dart';
import 'BaseService.dart';
import 'package:http/http.dart' as http;

class NetworkService extends BaseService {
  @override
  Future<dynamic> loginApi(String emailId,String password,String deviceType,String deviceToken) async {
    dynamic responseJson;
    try {
      var url = Uri.parse(baseUrl+LoginUrl);
      var response = await http.post(url, body: {'email': emailId, 'password': password, 'device_type':deviceType,'device_token': deviceToken});
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    }
   return responseJson;
  }

  @override
  Future getPaginationList(int perPage) async {
    dynamic responseJson;
    try {
      final response = await http.get(Uri.parse('${baseUrl1}per_page=$perPage'));
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    }
    return responseJson;
  }

}
