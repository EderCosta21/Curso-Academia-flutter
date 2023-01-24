import 'package:dio/dio.dart';
import 'package:dio/native_imp.dart';
import 'package:dw9_delivery_app/app/core/config/env/env.dart';

class CustomDio extends DioForNative {
  CustomDio()
      : super(
          BaseOptions(
            baseUrl: Env.i['backend_base_url'] ?? '',
            connectTimeout: 5000,
            receiveTimeout: 60000,
          ),
        ) {
    interceptors.add(LogInterceptor(
      requestBody: true,
      responseBody: true,
      requestHeader: true,
    ));
  }

  CustomDio auth() {
    return this;
  }

  CustomDio unauth() {
    return this;
  }
}
