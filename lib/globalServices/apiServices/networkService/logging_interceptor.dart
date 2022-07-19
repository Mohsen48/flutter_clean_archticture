import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart' as dio;
import 'package:dio/dio.dart';

class LoggingInterceptor extends dio.Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final data = options.data;
    if(data !=null){
    final FormData formData = data as dio.FormData;

    final formMap = <String, dynamic>{};
    formMap.addEntries(formData.fields);
    formMap.addEntries(formData.files);
    log(jsonEncode(formMap),
        time: DateTime.now(), name: "Requesting => ${options.path}");}

    // log(jsonEncode(data),
    //     time: DateTime.now(), name: "Requesting => ${options.path}");

    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    log(jsonEncode(response.data),
        time: DateTime.now(),
        name: "Response: ${response.requestOptions.path}");
    return super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    log(jsonEncode(err.response?.data),
        time: DateTime.now(), name: "Error: ${err.requestOptions.path}");

    log("Error: ${err.error?.toString()}");
    return super.onError(err, handler);
  }
}
