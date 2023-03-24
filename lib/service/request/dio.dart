import 'package:dio/dio.dart';

Dio dio() {
  return Dio(BaseOptions(baseUrl: 'https://api.myquran.com/v1', headers: {
    'Accept': 'application/json',
    'Content-type': 'application/json',
  }));
}
