import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HTTPServices {
  final Dio dio = Dio();
  String _baseUrl = "https://api.github.com/search";

  Future<Response?> get(String path) async {
    try {
      String _url = '$_baseUrl$path';
      return await dio.get(_url);
    } on DioError catch (e) {
      print(e);
    }
  }
}
