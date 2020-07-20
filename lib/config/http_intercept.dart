import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:wetrac/helpers/http_exception.dart';
import 'package:shared_preferences/shared_preferences.dart';

// import 'package:wetrac/config/locator.dart';
import 'package:wetrac/app.dart';
import 'package:wetrac/config/navigation_service.dart';

class AppInterceptors extends Interceptor {
  @override
  Future<dynamic> onRequest(RequestOptions options) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    if (prefs.containsKey('userData')) {
      final extractedUserData =
          json.decode(prefs.getString('userData')) as Map<String, Object>;

      options.headers.addAll({"x-auth-token": extractedUserData['authToken']});
    }

    if (prefs.containsKey('locationData')) {
      final extractedUserData =
          json.decode(prefs.getString('locationData')) as Map<String, Object>;

      options.headers
          .addAll({"location-token": extractedUserData['locationToken']});
    }
  }

  @override
  Future<dynamic> onError(DioError dioError) async {
    if (dioError.response.statusCode >= 400) {
      // this will push a new route and remove all the routes that were present

      if (dioError?.response?.data is String) {
        print(dioError?.response?.data);

        return HttpException(dioError.response.data as String);
      }

      final SharedPreferences prefs = await SharedPreferences.getInstance();
      if (dioError?.response?.data['message']
              .contains("Access denied. No token provided.") !=
          null) {
        prefs.remove('userData');
        NavigationService.goBackHome();
      }

      // if (dioError?.response?.data['message']
      //     .contains("Access denied. No Location token Provided")) {
      //   prefs.remove('locationData');
      //   NavigationService.goToSwitchStore();
      // }

      return dioError?.response?.data['message'] ?? dioError;
    }

    // print(dioError.type);
    // print(dioError.error);
    // print(dioError.message);

    // print(dioError.response.statusCode);

    return dioError?.response?.data['message'] ?? dioError;
  }

  // @override
  // Future<dynamic> onResponse(Response options) async {
  //   return options;
  // print(options.headers);

  // if (options.headers.value("verifyToken") != null) {
  //   //if the header is present, then compare it with the Shared Prefs key
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   var verifyToken = prefs.get("VerifyToken");

  //   // if the value is the same as the header, continue with the request
  //   if (options.headers.value("verifyToken") == verifyToken) {
  //     return options;
  //   }
  // }

  // return DioError(
  //     request: options.request, error: "User is no longer active");
  // }
}
