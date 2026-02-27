import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:doc_doc_clean_arch/core/errors/failure.dart';
import 'package:doc_doc_clean_arch/features/home/domain/entities/doctor_entity.dart';
import 'package:doc_doc_clean_arch/features/search/data/data_sources/search_data_sources/search_remote_data_source.dart';
import 'package:doc_doc_clean_arch/features/search/data/data_sources/sort_data_sources/sort_remote_data_source.dart';
import 'package:doc_doc_clean_arch/features/search/domain/repos/search_repo.dart';
import 'package:doc_doc_clean_arch/features/search/domain/use_cases/params/search_param.dart';
import 'package:doc_doc_clean_arch/features/search/domain/use_cases/params/sort_param.dart';

class SearchRepoImpl extends SearchRepo {
  final SearchRemoteDataSource searchRemoteDataSource;
  final SortRemoteDataSource sortRemoteDataSource;
  SearchRepoImpl({
    required this.sortRemoteDataSource,
    required this.searchRemoteDataSource,
  });
  @override
  Future<Either<Failure, List<DoctorEntity>>> getSearchResults({
    required SearchParam param,
  }) async {
    try {
      final doctorModel = await searchRemoteDataSource.getSearchResults(
        param: param,
      );
      final doctorEntitie = doctorModel
          .map((doctor) => doctor.toDoctorEntity())
          .toList();
      return Right(doctorEntitie);
    } on DioException catch (e) {
      return Left(ServerFailure.formDioException(e));
    } catch (e) {
      return Left(ServerFailure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<DoctorEntity>>> sortDoctors({
    required SortParam param,
  }) async {
    try {
      final sortedDoctorsModel = await sortRemoteDataSource.sortDoctors(
        param: param,
      );
      final doctorsEntity = sortedDoctorsModel
          .map((doctor) => doctor.toDoctorEntity())
          .toList();
      return Right(doctorsEntity);
    } on DioException catch (e) {
      return Left(ServerFailure.formDioException(e));
    } catch (e) {
      return Left(ServerFailure(errorMessage: e.toString()));
    }
  }
}
