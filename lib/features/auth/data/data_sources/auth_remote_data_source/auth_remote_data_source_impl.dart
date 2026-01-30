import 'package:doc_doc_clean_arch/constants.dart';
import 'package:doc_doc_clean_arch/core/utils/api_services.dart';
import 'package:doc_doc_clean_arch/features/auth/data/data_sources/auth_local_data_souce/auth_local_data_source.dart';
import 'package:doc_doc_clean_arch/features/auth/data/data_sources/auth_remote_data_source/auth_remote_data_source.dart';
import 'package:doc_doc_clean_arch/features/auth/data/models/user_model.dart';
import 'package:doc_doc_clean_arch/features/auth/domain/use_cases/params/login_params.dart';
import 'package:doc_doc_clean_arch/features/auth/domain/use_cases/params/register_params.dart';

class AuthRemoteDataSourceImpl extends AuthRemoteDataSource {
  final ApiServices apiServices;
  final AuthLocalDataSource localDataSource;
  AuthRemoteDataSourceImpl({
    required this.apiServices,
    required this.localDataSource,
  });
  @override
  Future<UserModel> login(LoginParams params) async {
    try {
      final response = await apiServices.post(
        endPoint: kLoginEndPoint,
        data: {'email': params.email, 'password': params.password},
      );
      final token = response['data']['token'];
      if (token != null) {
        await localDataSource.saveToken(token);
      }
      return UserModel.fromJson(response['data']);
    } catch (e) {
      throw Exception('Login failed: $e');
    }
  }
  @override
  Future<UserModel> register(RegisterParams params) async {
    try {
      final response = await apiServices.post(
        endPoint: kRegisterEndPoint,
        data: {
          'email': params.email,
          'password': params.password,
          'password_confirmation': params.confirmPassword,
          'name': params.name,
          'phone': params.phone,
          'gender': params.gender,
        },
      );
      final token = response['data']['token'];
      if (token != null) {
        await localDataSource.saveToken(token);
      }
      return UserModel.fromJson(response['data']);
    } catch (e) {
      throw Exception('Register failed: $e');
    }
  }
}
