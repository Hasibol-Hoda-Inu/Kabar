import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';

import '../model/network_response.dart';

class NetworkCaller{
  static Future <NetworkResponse> getRequest(String url) async {
    Uri uri = Uri.parse(url);
    debugPrint(url);

    final Response response = await get(uri);
    printResponseInConsole(url, response);

    try{
      if (response.statusCode == 200) {
        final decodedResponse = jsonDecode(response.body);
        return NetworkResponse(
            isSuccess: true,
            statusCode: response.statusCode,
            responseData: decodedResponse,
        );
      } else {
        return NetworkResponse(
          isSuccess: false,
          statusCode: response.statusCode,
        );
      }
    }catch(e){
      return NetworkResponse(
          isSuccess: false,
          statusCode: -1,
          errorMessage: e.toString());
    }
  }

  static void printResponseInConsole(String url, Response response){
    debugPrint("URL: $url \n ResponseCode: ${response.statusCode} \n ResponseBody: ${response.body}");
  }
}
