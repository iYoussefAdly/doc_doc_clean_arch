import 'package:doc_doc_clean_arch/core/utils/styles.dart';
import 'package:doc_doc_clean_arch/features/home/presentation/views/widgets/home_view_widgets/custom_rating.dart';
import 'package:flutter/material.dart';

class DoctorDetails extends StatelessWidget {
  const DoctorDetails({super.key, required this.name, required this.speciality, required this.degree});
  final String name;
  final String speciality;
  final String degree;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(name, style: Styles.styleBold16),
        SizedBox(height: 8),
        Text("$speciality | $degree", style: Styles.styleRegular12),
        SizedBox(height: 12),
        CustomRating(),
      ],
    );
  }
}
