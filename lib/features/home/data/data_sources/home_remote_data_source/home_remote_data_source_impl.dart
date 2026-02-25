import 'package:doc_doc_clean_arch/constants.dart';
import 'package:doc_doc_clean_arch/core/utils/api_services.dart';
import 'package:doc_doc_clean_arch/core/utils/functions/get_doctors_list.dart';
import 'package:doc_doc_clean_arch/features/auth/data/data_sources/auth_local_data_souce/auth_local_data_source.dart';
import 'package:doc_doc_clean_arch/features/home/data/data_sources/home_remote_data_source/home_remote_data_source.dart';
import 'package:doc_doc_clean_arch/features/home/data/models/doctor_model/doctor_model.dart';
class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final ApiServices apiServices;
  final AuthLocalDataSource authLocalDataSource;
  HomeRemoteDataSourceImpl(
    this.authLocalDataSource, {
    required this.apiServices,
  });
  @override
  Future<List<DoctorModel>> getDoctors() async {
    final token =await authLocalDataSource.getToken();
    final response = await apiServices.get(endPoint: kGetDoctorsEndPoint,token:token);
    List<DoctorModel> doctors = getDoctorsList(response);
    return doctors;
  }
}
