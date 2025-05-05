import 'package:dio/dio.dart';

class NetworkModule {
  Dio get dio => Dio(BaseOptions(
    baseUrl: 'https://jsonplaceholder.typicode.com/',
    connectTimeout: const Duration(seconds: 10),
    receiveTimeout: const Duration(seconds: 10),
  ));
}