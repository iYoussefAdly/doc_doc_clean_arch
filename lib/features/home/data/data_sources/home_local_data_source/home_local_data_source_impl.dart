import 'dart:convert';

import 'package:doc_doc_clean_arch/constants.dart';
import 'package:doc_doc_clean_arch/features/home/data/data_sources/home_local_data_source/home_local_data_source.dart';
import 'package:doc_doc_clean_arch/features/home/data/models/doctor_model/doctor_model.dart';
import 'package:doc_doc_clean_arch/features/home/domain/entities/doctor_entity.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  final SharedPreferences prefs;
  HomeLocalDataSourceImpl({required this.prefs});
  @override
  Future<void> cacheDoctors(List<DoctorEntity> doctors)async{
    final doctorsJson = doctors
        .map((doctor) => (doctor as DoctorModel).toJson())
        .toList();
    await prefs.setString(kCachedDoctors, json.encode(doctorsJson));
  }
  @override
  Future<List<DoctorEntity>> getCachedDoctors() async {
    final jsonString = prefs.getString(kCachedDoctors);
    if (jsonString == null) return [];
    final List decoded = json.decode(jsonString);
    return decoded
        .map((doctor) => DoctorModel.fromJson(doctor))
        .toList();
  }
}
