import 'dart:io';

import 'package:dio/dio.dart';
import 'package:slt_assesment/src/core/network/endpoints.dart';

class ApiClient {
  final Dio _dio;

  ApiClient({Dio? dio, BaseOptions? dioOptions})
      : _dio = Dio(dioOptions ?? BaseOptions()
          ..baseUrl = Endpoints.baseURL);

  Future<Response> get(String url,
      {Map<String, dynamic>? queryParameters}) async {
    Response response = await _dio.get(url, queryParameters: queryParameters);
    throwIfNoSuccess(response);
    return response;
  }

  void throwIfNoSuccess(Response response) {
    if ((response.statusCode ?? 0) < 200 || (response.statusCode ?? 0) > 299) {
      throw HttpException(response.statusMessage ?? 'Error exception');
    }
  }
}
