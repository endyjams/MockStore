import 'package:dio/dio.dart';
import '../../errors/exceptions.dart';

class ErrorInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    switch (err.response?.statusCode) {
      case 401:
        throw UnauthorizedException();
      case 500:
        throw ServerException();
      default:
        throw NetworkException();
    }
  }
}
