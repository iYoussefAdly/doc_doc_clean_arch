import 'package:dartz/dartz.dart';
import 'package:doc_doc_clean_arch/core/errors/failure.dart';
import 'package:doc_doc_clean_arch/features/home/domain/entities/doctor_entity.dart';
import 'package:doc_doc_clean_arch/features/search/domain/use_cases/params/search_param.dart';
abstract class SearchRepo {
  Future<Either<Failure, List<DoctorEntity>>> getSearchResults({required SearchParam name});
}
