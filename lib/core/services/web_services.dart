import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:movies_app/core/constants/constants.dart';

class WebServices {
  static WebServices? _this;
  Dio _dio = Dio();

  factory WebServices() {
    _this ?? WebServices._();
    return _this!;
  }

  WebServices._() {
    _dio.options.baseUrl = Constants.domain;
    initializeInterceptors();
  }

  initializeInterceptors() {
    _dio.interceptors.clear();
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
          // Do something before request is sent.
          // If you want to resolve the request with custom data,
          // you can resolve a `Response` using `handler.resolve(response)`.
          // If you want to reject the request with a error message,
          // you can reject with a `DioException` using `handler.reject(dioError)`.
          options.headers["Authorization"] = "Bear ${Constants.accessToken}";
          debugPrint("---> I am Interceptor on request <----");
          return handler.next(options);
        },
        onResponse: (Response response, ResponseInterceptorHandler handler) {
          // Do something with response data.
          // If you want to reject the request with a error message,
          // you can reject a `DioException` object using `handler.reject(dioError)`.
          debugPrint("---> I am Interceptor on response <----");
          debugPrint("Status code: ${response.statusCode}");
          debugPrint("Data: ${response.data}");
          debugPrint("---> I am Interceptor on response <----");
          return handler.next(response);
        },
        onError: (DioException error, ErrorInterceptorHandler handler) {
          // Do something with response error.
          // If you want to resolve the request with some custom data,
          // you can resolve a `Response` object using `handler.resolve(response)`.
          debugPrint("---> I am Interceptor on error <----");
          debugPrint("Status code: ${error.response?.statusCode}");
          debugPrint("Error: ${error.message}");
          debugPrint("---> I am Interceptor on error <----");
          return handler.next(error);
        },
      ),
    );
  }
}
