import 'package:dartz/dartz.dart';
import 'package:doc_doc_clean_arch/core/errors/failure.dart';
import 'package:doc_doc_clean_arch/core/use_case/use_case.dart';
import 'package:doc_doc_clean_arch/features/home/domain/entities/doctor_entity.dart';
import 'package:doc_doc_clean_arch/features/search/domain/repos/search_repo.dart';
import 'package:doc_doc_clean_arch/features/search/domain/use_cases/params/sort_param.dart';

class SortUseCase extends UseCase<List<DoctorEntity>, SortParam> {
  final SearchRepo searchRepo;
  SortUseCase({required this.searchRepo});
  @override
  Future<Either<Failure, List<DoctorEntity>>> call(SortParam params) async {
    //check user permsission
    return await searchRepo.sortDoctors(param: params);
  }
}
