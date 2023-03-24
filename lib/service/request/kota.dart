import 'dart:html';

import 'package:arridho_kb/service/request/dio.dart';
import 'package:dio/dio.dart' as Dio;

import '../../Network/error_handler.dart';

class AllCity {
  Future requestAllCity() async {
    try {
      final res = await dio().post('/sholat/kota/semua');
      return res;
    } on Dio.DioError catch (e) {
      return {
        'status': false,
        'message':
            '${ErrorHandler.handle(e).failure.message} \n ${ErrorHandler.handle(e).failure.code}'
      };
    }
  }
}
