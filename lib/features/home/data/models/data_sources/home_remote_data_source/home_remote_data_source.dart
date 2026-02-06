import 'package:doc_doc_clean_arch/features/home/domain/entities/doctor_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<DoctorEntity>> getDoctors();
}
