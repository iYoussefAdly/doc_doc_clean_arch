import 'package:doc_doc_clean_arch/features/auth/data/models/user_model.dart';
import 'package:doc_doc_clean_arch/features/auth/domain/use_cases/params/login_params.dart';
import 'package:doc_doc_clean_arch/features/auth/domain/use_cases/params/register_params.dart';

abstract class AuthRemoteDataSource {
  Future<UserModel> login(LoginParams params);
  Future<UserModel> register(RegisterParams params);
}
