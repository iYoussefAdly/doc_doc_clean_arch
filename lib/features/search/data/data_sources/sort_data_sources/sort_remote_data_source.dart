import 'package:doc_doc_clean_arch/features/home/data/models/doctor_model/doctor_model.dart';
import 'package:doc_doc_clean_arch/features/search/domain/use_cases/params/sort_param.dart';

abstract class SortRemoteDataSource {
  Future<List<DoctorModel>> sortDoctors({required SortParam param});
}
