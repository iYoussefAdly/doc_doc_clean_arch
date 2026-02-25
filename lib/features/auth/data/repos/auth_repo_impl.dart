import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:doc_doc_clean_arch/core/errors/failure.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/repos/auth_repo.dart';
import '../data_sources/auth_local_data_souce/auth_local_data_source.dart';
import '../data_sources/auth_remote_data_source/auth_remote_data_source.dart';
import '../models/user_model.dart';
import '../../domain/use_cases/params/login_params.dart';
import '../../domain/use_cases/params/register_params.dart';

class AuthRepoImpl implements AuthRepo {
  final AuthRemoteDataSource remoteDataSource;
  final AuthLocalDataSource localDataSource;
  AuthRepoImpl({required this.remoteDataSource, required this.localDataSource});
  @override
  Future<Either<Failure, UserEntity>> login(LoginParams params) async {
    try {
      final UserModel userModel = await remoteDataSource.login(params);
      return Right(_mapToEntity(userModel));
    } on DioException catch (e) {
      return Left(ServerFailure.formDioException(e));
    } catch (e) {
      return Left(ServerFailure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> register(RegisterParams params) async {
    try {
      final UserModel userModel = await remoteDataSource.register(params);
      return Right(_mapToEntity(userModel));
    } on DioException catch (e) {
      return Left(ServerFailure.formDioException(e));
    } catch (e) {
      return Left(ServerFailure(errorMessage: e.toString()));
    }
  }
  @override
  Future<void> logout() async {
    try {
      await remoteDataSource.logOut();
    } catch (e) {
      // Even if remote logout fails, clear local data to ensure user can logout
      // This handles cases where server is unreachable or returns an error
    } finally {
      // Always clear local data regardless of remote call success/failure
      await localDataSource.logout();
    }
  }
}
  UserEntity _mapToEntity(UserModel model) {
    return UserEntity(
      name: model.name,
      email: model.email,
      phone: model.phone,
      gender: model.gender,
    );
  }
