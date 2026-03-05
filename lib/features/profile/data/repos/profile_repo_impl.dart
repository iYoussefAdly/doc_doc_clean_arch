import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:doc_doc_clean_arch/core/errors/failure.dart';
import 'package:doc_doc_clean_arch/features/profile/data/remote_data_source.dart/profile_remote_data_source.dart';
import 'package:doc_doc_clean_arch/features/profile/domain/entities/profile_user_entity.dart';
import 'package:doc_doc_clean_arch/features/profile/domain/repos/profile_repo.dart';

class ProfileRepoImpl extends ProfileRepo {
  final ProfileRemoteDataSource profileRemoteDataSource;
  ProfileRepoImpl({required this.profileRemoteDataSource});
  @override
  Future<Either<Failure, ProfileUserEntity>> getUserData() async {
    try {
      final result = await profileRemoteDataSource.getUserData();
      return Right(result);
    } on DioException catch (e) {
      return Left(ServerFailure.formDioException(e));
    } catch (e) {
      return Left(ServerFailure(errorMessage: e.toString()));
    }
  }
}
