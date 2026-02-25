import 'package:dartz/dartz.dart';
import 'package:doc_doc_clean_arch/core/errors/failure.dart';
import 'package:doc_doc_clean_arch/features/auth/domain/entities/user_entity.dart';
import 'package:doc_doc_clean_arch/features/auth/domain/use_cases/params/login_params.dart';
import 'package:doc_doc_clean_arch/features/auth/domain/use_cases/params/register_params.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> login(LoginParams params);
  Future<Either<Failure, UserEntity>> register(RegisterParams params);
  Future<void> logout();
}
