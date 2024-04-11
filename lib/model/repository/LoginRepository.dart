import 'package:responsiveuiflutter/model/api/apidata/LoginApiResponse.dart';
import '../services/NetworkService.dart';

class LoginRepository {
  final NetworkService _networkService = NetworkService();

  Future<LoginApiResponse> authentcationApi(String emailId,String password,String deviceType,String deviceToken) async {
     dynamic response = await _networkService.loginApi(emailId,password,deviceType,deviceToken);
     Map<String, dynamic> responseDataList = response as Map<String, dynamic>;
     LoginApiResponse loginApiResponseList = LoginApiResponse.fromJson(responseDataList);
     return loginApiResponseList;

  }
}
