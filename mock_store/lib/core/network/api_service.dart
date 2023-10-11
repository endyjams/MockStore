import 'package:dio/dio.dart';
import 'interceptors/logging_interceptor.dart';
import 'interceptors/error_interceptor.dart';

final dio = Dio()..interceptors.addAll([
  LoggingInterceptor(),
  ErrorInterceptor()
]);