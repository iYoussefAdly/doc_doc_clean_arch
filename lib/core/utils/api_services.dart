import 'package:dio/dio.dart';

class ApiServices {
  final Dio dio;
  ApiServices({required this.dio});

  static const String baseUrl = "https://vcare.integration25.com/api";

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    final response = await dio.get("$baseUrl$endPoint");
    return response.data;
  }

  Future<Map<String, dynamic>> post({
    required String endPoint,
    Map<String, dynamic>? data,
  }) async {
    final response = await dio.post(
      "$baseUrl$endPoint",
      data: data,
    );
    return response.data;
  }
}
