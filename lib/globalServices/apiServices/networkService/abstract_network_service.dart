import 'package:dio/dio.dart';

abstract class AbstractNetworkService {
  Future<Response?> get(url, {headers, query});
  Future<Response?> post(url, {body, headers, query});
  Future<Response?> delete(url, {body, headers, query});
  Future<Response?> put(url, {body, headers, query});
}
