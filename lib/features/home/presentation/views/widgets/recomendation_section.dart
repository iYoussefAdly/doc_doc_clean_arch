import 'package:doc_doc_clean_arch/constants.dart';
import 'package:doc_doc_clean_arch/core/utils/styles.dart';
import 'package:doc_doc_clean_arch/features/home/presentation/views/widgets/doctor_item_view_builder.dart';
import 'package:flutter/material.dart';
class RecomendationSection extends StatelessWidget {
  const RecomendationSection({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text("Recommendation Doctor", style: Styles.styleSemiBold18),
            Spacer(),
            Text(
              "See All",
              style: Styles.styleRegular12.copyWith(color: kTextPrimaryColor),
            ),
          ],
        ),
        SizedBox(height: 5),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: DoctorItemViewBuilder(),
          ),
        ),
      ],
    );
  }
}
