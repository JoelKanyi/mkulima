import 'package:dio/dio.dart';

import '../model/cat.dart';

class DioClient {
  final Dio _dio = Dio();

  final _baseUrl = "https://api.thecatapi.com/v1";

  // https://api.thecatapi.com/v1/breeds/?x-api-key=f2ce552f-98a0-41b1-80a0-66c8e917b8a2

  static Future<List<Cat>> getCats() async {
    try {
      Response response = await Dio().get('https://api.thecatapi.com/v1/breeds',
          options: Options(
              headers: {'x-api-key': 'f2ce552f-98a0-41b1-80a0-66c8e917b8a2'}));
      print("Cats Info: ${response.data}");

      return (response.data as List).map((e) => Cat.fromJson(e)).toList();
    } catch (error, stacktrace) {
      throw Exception("Exception occured: $error stacktrace: $stacktrace");
    }
  }
}
