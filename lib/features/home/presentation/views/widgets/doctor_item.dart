import 'package:doc_doc_clean_arch/features/home/domain/entities/doctor_entity.dart';
import 'package:doc_doc_clean_arch/features/home/presentation/views/widgets/custom_doctor_image.dart';
import 'package:doc_doc_clean_arch/features/home/presentation/views/widgets/doctor_details.dart';
import 'package:flutter/material.dart';

class DoctorItem extends StatelessWidget {
  const DoctorItem({super.key, required this.doctor});
  final DoctorEntity doctor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomDoctorImage(image: doctor.imageUrl),
        SizedBox(width: 16),
        DoctorDetails(
          name: doctor.name,
          speciality: doctor.specialty,
          degree: doctor.degree,
        ),
      ],
    );
  }
}
