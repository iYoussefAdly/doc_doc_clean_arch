import 'package:doc_doc_clean_arch/features/home/domain/entities/doctor_entity.dart';
import 'package:doc_doc_clean_arch/features/search/domain/use_cases/params/search_param.dart';

abstract class SearchRemoteDataSource {
  Future<List<DoctorEntity>> getSearchResults({required SearchParam param});
}
