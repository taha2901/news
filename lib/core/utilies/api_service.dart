import 'package:dio/dio.dart';

class Api {
  static Dio? dio;
  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://newsapi.org/v2/top-headlines?',
        receiveDataWhenStatusError: true,
      ),
    );
  }

  Future<Response> getData({
    required String endPoint,
    Map<String, dynamic>? query,
    String lang = 'ar',
    String? token,
  }) async {
    dio!.options.headers = {
      'Content-Type': 'application/json',
      'lang': lang,
      'Authorization': token,
    };
    return await dio!.get(
      endPoint,
      queryParameters: query,
    );
  }

  Future<Response> postData({
    required String url,
    dynamic query,
    required Map<String, dynamic> data,
    String lang = 'ar',
    String? token,
  }) async {
    dio!.options.headers = {
      'lang': lang,
      'Authorization': token,
    };
    return await dio!.post(
      url,
      queryParameters: query,
      data: data,
    );
  }
}
