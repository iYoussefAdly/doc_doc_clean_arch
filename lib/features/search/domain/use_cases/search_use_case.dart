import 'package:dartz/dartz.dart';
import 'package:doc_doc_clean_arch/core/errors/failure.dart';
import 'package:doc_doc_clean_arch/core/use_case/use_case.dart';
import 'package:doc_doc_clean_arch/features/home/domain/entities/doctor_entity.dart';
import 'package:doc_doc_clean_arch/features/search/domain/repos/search_repo.dart';
import 'package:doc_doc_clean_arch/features/search/domain/use_cases/params/search_param.dart';

class SearchUseCase extends UseCase<List<DoctorEntity>, SearchParam> {
  final SearchRepo searchRepo;
  SearchUseCase({required this.searchRepo});
  @override
  Future<Either<Failure,List<DoctorEntity>>> call(SearchParam param) async{
   return await searchRepo.getSearchResults(param: param);
  }
}
