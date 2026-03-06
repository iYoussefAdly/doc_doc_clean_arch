import 'package:dartz/dartz.dart';
import 'package:doc_doc_clean_arch/core/errors/failure.dart';
import 'package:doc_doc_clean_arch/features/profile/domain/entities/profile_user_entity.dart';
import 'package:doc_doc_clean_arch/features/profile/domain/use_cases/params/update_profile_param.dart';

abstract class ProfileRepo {
  Future<Either<Failure, ProfileUserEntity>> getUserData();
  Future<Either<Failure, ProfileUserEntity>> updateUserData(UpdateProfileParam params);
}
