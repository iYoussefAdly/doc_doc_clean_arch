import 'package:dartz/dartz.dart';
import 'package:doc_doc_clean_arch/core/errors/failure.dart';
import 'package:doc_doc_clean_arch/features/home/domain/entities/doctor_entity.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<DoctorEntity>>> getDoctors();
}
