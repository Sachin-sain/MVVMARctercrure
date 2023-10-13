import 'package:create_projectusing_mvvm/data/network/network_api_services.dart';
import 'package:create_projectusing_mvvm/res/appUrl/app_url.dart';

class LoginRepository{
  final _apiService=NetworkApiServices();
  Future<dynamic>loginApi(var data)async{
    dynamic response=_apiService.postApi(data, AppUrl.baseUrl);
    return response;
  }
}