import 'package:dartz/dartz.dart';
import 'package:doc_doc_clean_arch/core/errors/failure.dart';
import 'package:doc_doc_clean_arch/core/use_case/use_case.dart';
import 'package:doc_doc_clean_arch/features/auth/domain/entities/user_entity.dart';
import 'package:doc_doc_clean_arch/features/auth/domain/repos/auth_repo.dart';
import 'package:doc_doc_clean_arch/features/auth/domain/use_cases/params/register_params.dart';

class RegisterUseCase extends UseCase<UserEntity, RegisterParams> {
  final AuthRepo authRepo;

  RegisterUseCase({required this.authRepo});
  @override
  Future<Either<Failure, UserEntity>> call(RegisterParams params) {
    //check user permissions
    return authRepo.register(params);
  }
}
