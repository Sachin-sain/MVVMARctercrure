import 'dart:convert';
import 'dart:io';
import 'package:create_projectusing_mvvm/data/app_exceptions.dart';
import 'package:create_projectusing_mvvm/data/network/base_api_services.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class NetworkApiServices extends BaseApiServices {
  @override
  Future getApi(String url) async {
    if (kDebugMode) {
      print(url);
    }
    dynamic responseJson;
    try {
      final response = await http.get(Uri.parse(url)).timeout(
          Duration(seconds: 20));
      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException('No internet');
    } on RequestTimeOutException {
      throw RequestTimeOutException('');
    }
    return responseJson;
  }


  @override
  Future postApi(var data, String url) async {
    dynamic responseJson;
    try {
      final response = await http.post(Uri.parse(url),
        body: jsonEncode(data),
        // body:data,

      ).timeout(Duration(seconds: 20));
      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException('No internet');
    } on RequestTimeOutException {
      throw RequestTimeOutException('');
    }
    return responseJson;
  }


  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        throw InvalidUrlException;
      default:
        throw FetchDataException(
            'Error while communiv=cating' + response.statusCode.toString());
    }
  }




  
}