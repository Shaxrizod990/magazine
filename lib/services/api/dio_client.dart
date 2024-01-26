import 'package:dio/dio.dart';

import '../../utils/config.dart';

class DioClient {
  final _dio = Dio()..options.baseUrl = AppConfig.baseUrl;

  Dio get dio => _dio;

  DioClient() {
    _dio.interceptors.add(
      LogInterceptor(
        request: true,
        responseBody: true,
      ),
    );
  }
}
