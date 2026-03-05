import 'package:dartz/dartz.dart';
import 'package:doc_doc_clean_arch/core/errors/failure.dart';
import 'package:doc_doc_clean_arch/features/auth/domain/entities/user_entity.dart';

abstract class ProfileRepo {
  Future<Either<Failure,UserEntity>> getUserData();
}
