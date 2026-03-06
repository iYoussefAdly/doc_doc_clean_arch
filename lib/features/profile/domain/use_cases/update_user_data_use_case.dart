import 'package:dartz/dartz.dart';
import 'package:doc_doc_clean_arch/core/errors/failure.dart';
import 'package:doc_doc_clean_arch/core/use_case/use_case.dart';
import 'package:doc_doc_clean_arch/features/profile/domain/entities/profile_user_entity.dart';
import 'package:doc_doc_clean_arch/features/profile/domain/repos/profile_repo.dart';
import 'package:doc_doc_clean_arch/features/profile/domain/use_cases/params/update_profile_param.dart';

class UpdateUserDataUseCase
    extends UseCase<ProfileUserEntity, UpdateProfileParam> {
  final ProfileRepo profileRepo;

  UpdateUserDataUseCase({required this.profileRepo});
  @override
  Future<Either<Failure, ProfileUserEntity>> call(
    UpdateProfileParam params,
  ) async {
    //check the permission of User
    return await profileRepo.updateUserData(params);
  }
}
