import 'package:dio/dio.dart';
import 'package:mock_store/core/network/interceptors/error_interceptor.dart';
import 'package:mock_store/core/network/interceptors/logging_interceptor.dart';

final dio = Dio()..interceptors.addAll([
  LoggingInterceptor(),
  ErrorInterceptor()
]);