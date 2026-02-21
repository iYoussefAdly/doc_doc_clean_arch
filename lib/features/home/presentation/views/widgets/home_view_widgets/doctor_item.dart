import 'package:doc_doc_clean_arch/core/utils/app_router.dart';
import 'package:doc_doc_clean_arch/features/home/domain/entities/doctor_entity.dart';
import 'package:doc_doc_clean_arch/features/home/presentation/views/widgets/home_view_widgets/custom_doctor_image.dart';
import 'package:doc_doc_clean_arch/features/home/presentation/views/widgets/home_view_widgets/doctor_details.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DoctorItem extends StatelessWidget {
  const DoctorItem({super.key, required this.doctor});
  final DoctorEntity doctor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:() => GoRouter.of(context).push(AppRouter.kDetailsView,extra: doctor),
      child: Row(
        children: [
          CustomDoctorImage(image: doctor.imageUrl),
          SizedBox(width: 16),
          DoctorDetails(
            name: doctor.name,
            speciality: doctor.specialty,
            degree: doctor.degree,
          ),
        ],
      ),
    );
  }
}
