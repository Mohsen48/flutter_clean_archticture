import 'package:budget/utils/urls.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import 'abstract_network_service.dart';
import 'logging_interceptor.dart';

//     (client.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
//         (client) {
//       client.badCertificateCallback = (cert, host, port) => true;
//       return client;
//     };

class NetworkService extends GetxService implements AbstractNetworkService {
  Dio? _dio;
  @override
  void onInit() {
    _dio = Dio(
      BaseOptions(
        connectTimeout: 10000,
        receiveTimeout: 10000,
        baseUrl: Urls.baseUrl,
      ),
    );
    if (!kReleaseMode) {
      _dio?.interceptors.add(LoggingInterceptor());
    }
    super.onInit();
  }

  @override
  Future<Response?> delete(url, {body, headers, query}) async {
    try {
      return await _dio?.delete(url, data: body, queryParameters: query);
    } on DioError {
      return null;
    }
  }

  @override
  Future<Response?> get(url, {headers, query}) async {
    try {
      return await _dio?.get(url, queryParameters: query);
    } on DioError {
      return null;
    }
  }

  @override
  Future<Response?> post(url, {body, headers, query}) async {
    try {
      return await _dio?.post(url, data: body, queryParameters: query);
    } on DioError {
      return null;
    }
  }

  @override
  Future<Response?> put(url, {body, headers, query}) async {
    try {
      return await _dio?.put(url, data: body, queryParameters: query);
    } on DioError {
      return null;
    }
  }
}
