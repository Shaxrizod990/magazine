import 'package:dio/dio.dart';

import '../../utils/config.dart';

class DioClient {
  final _dio = Dio()..options.baseUrl = AppConfig.baseUrl;

  Dio get dio => _dio;

  DioClient() {
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: _onRequest,
        onError: _onError,
      ),
    );
  }

  Future<void> _onError(
      DioException error,
      ErrorInterceptorHandler handler,
      ) async {
    return handler.next(error);
  }

  Future<void> _onRequest(
      RequestOptions options,
      RequestInterceptorHandler handler,
      ) async {
    return handler.next(options);
  }

}

