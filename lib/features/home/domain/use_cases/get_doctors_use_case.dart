import 'package:dartz/dartz.dart';
import 'package:doc_doc_clean_arch/core/errors/failure.dart';
import 'package:doc_doc_clean_arch/core/use_case/use_case.dart';
import 'package:doc_doc_clean_arch/features/home/domain/entities/doctor_entity.dart';
import 'package:doc_doc_clean_arch/features/home/domain/repos/home_repo.dart';

class GetDoctorsUseCase
    extends UseCase<Either<Failure, List<DoctorEntity>>, NoParam> {
  final HomeRepo homeRepo;
  GetDoctorsUseCase({required this.homeRepo});
  @override
  Future<Either<Failure, List<DoctorEntity>>> call(NoParam params) {
    //check user permission
    return homeRepo.getDoctors();
  }
}

class NoParam{}
