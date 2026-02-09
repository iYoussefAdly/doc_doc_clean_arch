import 'package:dio/dio.dart';

class ApiServices {
  final Dio dio;
  ApiServices({required this.dio});

  static const String baseUrl = "https://vcare.integration25.com/api";

  Future<Map<String, dynamic>> get({
    required String endPoint,
    String? token,
  }) async {
    final response = await Dio().get(
      "$baseUrl$endPoint",
      options: Options(
        headers: token != null ? {"Authorization": "Bearer $token"} : null,
      ),
    );
    return response.data;
  }

  Future<Map<String, dynamic>> post({
    required String endPoint,
    Map<String, dynamic>? data,
    String? token,
  }) async {
    final response = await dio.post(
      "$baseUrl$endPoint",
      data: data,
      options: Options(
        headers: token != null ? {"Authorization": "Bearer $token"} : null,
      ),
    );
    return response.data;
  }
}
