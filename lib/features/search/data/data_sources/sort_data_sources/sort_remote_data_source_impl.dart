import 'package:doc_doc_clean_arch/constants.dart';
import 'package:doc_doc_clean_arch/core/utils/api_services.dart';
import 'package:doc_doc_clean_arch/core/utils/functions/get_doctors_list.dart';
import 'package:doc_doc_clean_arch/core/utils/functions/get_user_token.dart';
import 'package:doc_doc_clean_arch/features/home/data/models/doctor_model/doctor_model.dart';
import 'package:doc_doc_clean_arch/features/search/data/data_sources/sort_data_sources/sort_remote_data_source.dart';
import 'package:doc_doc_clean_arch/features/search/domain/use_cases/params/sort_param.dart';

class SortRemoteDataSourceImpl extends SortRemoteDataSource {
  final ApiServices apiServices;
  SortRemoteDataSourceImpl({required this.apiServices});
  @override
  Future<List<DoctorModel>> sortDoctors({required SortParam param}) async {
    final token = await getUserToken();
    final response = await apiServices.get(
      endPoint: "${sortEndPoint}city=${param.cityId}",
      token: token,
    );
    List<DoctorModel> sortedDoctorsModel = getDoctorsList(response);
    return sortedDoctorsModel;
  }
}
