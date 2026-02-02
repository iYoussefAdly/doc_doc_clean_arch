import 'package:doc_doc_clean_arch/features/home/presentation/views/widgets/custom_doctor_image.dart';
import 'package:doc_doc_clean_arch/features/home/presentation/views/widgets/doctor_details.dart';
import 'package:flutter/material.dart';

class DoctorItem extends StatelessWidget {
  const DoctorItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomDoctorImage(),
        SizedBox(
          width: 16,
        ),
        DoctorDetails()
      ],
    );
  }
}