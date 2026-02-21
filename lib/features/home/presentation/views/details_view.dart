import 'package:doc_doc_clean_arch/features/home/domain/entities/doctor_entity.dart';
import 'package:doc_doc_clean_arch/features/home/presentation/views/widgets/details_view_widgets/details_view_body.dart';
import 'package:flutter/material.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key, required this.doctor});
  final DoctorEntity doctor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: DetailsViewBody(doctor: doctor,));
  }
}
