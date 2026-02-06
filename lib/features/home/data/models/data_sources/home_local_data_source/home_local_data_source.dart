import 'package:doc_doc_clean_arch/features/home/domain/entities/doctor_entity.dart';

abstract class HomeLocalDataSource {
  Future<void> cacheDoctors(List<DoctorEntity> doctors);
  Future<List<DoctorEntity>> getCachedDoctors();
}
