import 'package:doc_doc_clean_arch/constants.dart';
import 'package:doc_doc_clean_arch/core/utils/api_services.dart';
import 'package:doc_doc_clean_arch/core/utils/functions/get_doctors_list.dart';
import 'package:doc_doc_clean_arch/core/utils/functions/get_user_token.dart';
import 'package:doc_doc_clean_arch/features/home/data/models/doctor_model/doctor_model.dart';
import 'package:doc_doc_clean_arch/features/search/data/data_sources/search_remote_data_source.dart';
import 'package:doc_doc_clean_arch/features/search/domain/use_cases/params/search_param.dart';
class SearchRemoteDataSourceImpl extends SearchRemoteDataSource {
  final ApiServices apiServices;
  SearchRemoteDataSourceImpl({required this.apiServices});
  @override
  Future<List<DoctorModel>> getSearchResults({
    required SearchParam param,
  }) async {
    final token = await getUserToken();
    final response = await apiServices.get(
      endPoint: "${searchEndPoint}name=${param.name}",
      token: token,
    );
    List<DoctorModel> doctor = getDoctorsList(response);
    return doctor;
  }
}
