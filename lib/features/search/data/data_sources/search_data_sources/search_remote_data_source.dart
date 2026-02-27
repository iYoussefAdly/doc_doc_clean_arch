import 'package:doc_doc_clean_arch/features/home/data/models/doctor_model/doctor_model.dart';
import 'package:doc_doc_clean_arch/features/search/domain/use_cases/params/search_param.dart';

abstract class SearchRemoteDataSource {
  Future<List<DoctorModel>> getSearchResults({required SearchParam param});
}
