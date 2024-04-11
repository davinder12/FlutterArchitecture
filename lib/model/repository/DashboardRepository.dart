import 'package:responsiveuiflutter/model/api/apidata/FoodList.dart';
import 'package:responsiveuiflutter/model/api/apidata/LoginApiResponse.dart';
import '../services/NetworkService.dart';

class DashboardRepository {
  final NetworkService _networkService = NetworkService();

  Future<List<FoodList>> getPaginationList(int perPage) async {
     dynamic response = await _networkService.getPaginationList(perPage);
     final jsonData = response as List;
     List<FoodList> foodList = jsonData.map((tagJson) => FoodList.fromJson(tagJson)).toList();
     print(jsonData);
     return foodList;

  }
}
