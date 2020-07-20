import 'package:dio/dio.dart';

import 'http_intercept.dart';

class HttpClient {
  Dio get httpIncercept {
    var dio = Dio();
    dio.interceptors.add(AppInterceptors());
    return dio;
  }

  Dio get http {
    var dio = Dio();
    return dio;
  }
}
