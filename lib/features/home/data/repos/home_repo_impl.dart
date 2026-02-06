import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:doc_doc_clean_arch/core/errors/failure.dart';
import 'package:doc_doc_clean_arch/features/home/data/data_sources/home_local_data_source/home_local_data_source.dart';
import 'package:doc_doc_clean_arch/features/home/data/data_sources/home_remote_data_source/home_remote_data_source.dart';
import 'package:doc_doc_clean_arch/features/home/domain/entities/doctor_entity.dart';
import 'package:doc_doc_clean_arch/features/home/domain/repos/home_repo.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeLocalDataSource homeLocalDataSource;
  final HomeRemoteDataSource homeRemoteDataSource;

  HomeRepoImpl({
    required this.homeLocalDataSource,
    required this.homeRemoteDataSource,
  });
  @override
  Future<Either<Failure, List<DoctorEntity>>> getDoctors() async {
    try {
      final doctorsModels = await homeRemoteDataSource.getDoctors();
      await homeLocalDataSource.cacheDoctors(doctorsModels);
      final doctorsEntities = doctorsModels
          .map((doctor) => doctor.toDoctorEntity())
          .toList();
      return Right(doctorsEntities);
    } on DioException catch (e) {
      return Left(ServerFailure(errorMessage: e.toString()));
    } catch (e) {
      return Left(ServerFailure(errorMessage: e.toString()));
    }
  }
}
