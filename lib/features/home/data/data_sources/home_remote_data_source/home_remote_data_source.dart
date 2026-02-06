import 'package:doc_doc_clean_arch/features/home/data/models/doctor_model/doctor_model.dart';
abstract class HomeRemoteDataSource {
  Future<List<DoctorModel>> getDoctors();
}
