import 'package:doc_doc_clean_arch/features/home/data/models/doctor_model/doctor_model.dart';

List<DoctorModel> getDoctorsList(Map<String, dynamic> response) {
    final List<DoctorModel> doctors = [];
    for (var doctor in response["data"]) {
      doctors.add(DoctorModel.fromJson(doctor));
    }
    return doctors;
  }