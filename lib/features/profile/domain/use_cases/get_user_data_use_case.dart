import 'package:dartz/dartz.dart';
import 'package:doc_doc_clean_arch/core/errors/failure.dart';
import 'package:doc_doc_clean_arch/core/use_case/use_case.dart';
import 'package:doc_doc_clean_arch/features/auth/domain/entities/user_entity.dart';
import 'package:doc_doc_clean_arch/features/home/domain/use_cases/get_doctors_use_case.dart';
import 'package:doc_doc_clean_arch/features/profile/domain/repos/profile_repo.dart';

class GetUserDataUseCase extends UseCase<UserEntity, NoParam> {
  final ProfileRepo profileRepo;

  GetUserDataUseCase({required this.profileRepo});
  @override
  Future<Either<Failure, UserEntity>> call(NoParam params) async {
    return await profileRepo.getUserData();
  }
}
