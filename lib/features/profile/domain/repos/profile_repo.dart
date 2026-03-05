import 'package:dartz/dartz.dart';
import 'package:doc_doc_clean_arch/core/errors/failure.dart';
import 'package:doc_doc_clean_arch/features/profile/domain/entities/profile_user_entity.dart';

abstract class ProfileRepo {
  Future<Either<Failure, ProfileUserEntity>> getUserData();
}
