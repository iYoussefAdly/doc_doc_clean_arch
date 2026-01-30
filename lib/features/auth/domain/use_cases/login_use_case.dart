import 'package:doc_doc_clean_arch/core/use_case/use_case.dart';
import 'package:doc_doc_clean_arch/features/auth/domain/entities/user_entity.dart';
import 'package:doc_doc_clean_arch/features/auth/domain/repos/auth_repo.dart';
import 'package:doc_doc_clean_arch/features/auth/domain/use_cases/params/login_params.dart';

class LoginUseCase extends UseCase<UserEntity, LoginParams> {
  final AuthRepo authRepo;

  LoginUseCase({required this.authRepo});
  @override
  Future<UserEntity> call(LoginParams params) {
   return authRepo.login(params);
  }
}
