import 'dart:convert';

import 'package:app/app/base_api.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@module
abstract class NetworkModule {
  @lazySingleton
  Dio dio(Interceptor interceptor) {
    var dio = Dio(BaseOptions(
        connectTimeout: const Duration(seconds: 40),
        receiveTimeout: const Duration(seconds: 40)));
    dio.interceptors.add(interceptor);
    return dio;
  }

  @Named('dio_non_interceptor')
  @lazySingleton
  Dio dioNonInterceptor() {
    var dio = Dio(BaseOptions(
        connectTimeout: const Duration(seconds: 40),
        receiveTimeout: const Duration(seconds: 40)));
    return dio;
  }

  @lazySingleton
  Interceptor interceptor(IApi api, Logger logger) {
    return InterceptorsWrapper(onRequest: (options, handler) {
      options.contentType = Headers.jsonContentType;
      return handler.next(options);
    }, onResponse: (options, handler) async {
      var body = const JsonEncoder.withIndent('  ').convert(options.data);

      var headers = options.requestOptions.headers.toString();
      var url = options.requestOptions.baseUrl + options.requestOptions.path;
      var params = options.requestOptions.queryParameters;
      var requestBody = options.requestOptions.data != null
          ? const JsonEncoder.withIndent('  ')
              .convert(options.requestOptions.data)
          : null;

      logger.i(
          'SUCCESS(${options.statusCode ?? 0}): $url \n${headers.isNotEmpty && headers != '{}' ? 'HEADERS: \n$headers' : ''} \n${params.isNotEmpty && params != '{}' ? 'PARAMS: \n$params' : ''} \n${requestBody != null && requestBody.isNotEmpty && requestBody != '{}' ? 'BODY: \n$requestBody' : ''} \n${'RESPONSE: \n$body'}');

      return handler.next(options);
    }, onError: (error, handler) async {
      logger.i('ERROR: ${error.response?.data?.toString()}');

      var headers = error.requestOptions.headers.toString();
      var url = error.requestOptions.baseUrl + error.requestOptions.path;

      var params = error.requestOptions.queryParameters;
      var requestBody = error.requestOptions.data != null
          ? const JsonEncoder.withIndent('  ')
              .convert(error.requestOptions.data)
          : null;

      logger.i(
          'ERROR(${error.response?.statusCode ?? 0}): $url \n${headers.isNotEmpty && headers != '{}' ? 'HEADERS: \n$headers' : ''} \n${params.isNotEmpty && params != '{}' ? 'PARAMS: \n$params' : ''} \n${requestBody != null && requestBody.isNotEmpty && requestBody != '{}' ? 'BODY: \n$requestBody' : ''} \n${'ERROR: \n${error.response?.data?.toString()}'}');

      return handler.next(error);
    });
  }

  @Named('environment')
  String environment(IApi api) {
    return api.environment;
  }

  @Named('poke_api_domain')
  String pokeApiDomain(IApi api) {
    return api.pokeApiDomain;
  }

  @Named('sprits_domain')
  String spritsDomain(IApi api) {
    return api.spritsDomain;
  }

  @Named('limit')
  String limitServices(IApi api) {
    return api.limit;
  }
}
