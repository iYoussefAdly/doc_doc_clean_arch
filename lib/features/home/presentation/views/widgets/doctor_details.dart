import 'package:doc_doc_clean_arch/core/utils/styles.dart';
import 'package:doc_doc_clean_arch/features/home/presentation/views/widgets/custom_rating.dart';
import 'package:flutter/material.dart';

class DoctorDetails extends StatelessWidget {
  const DoctorDetails({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text("Dr. Randy Wigham",style:Styles.styleBold16,),
        SizedBox(
          height: 8,
        ),
        Text("General | RSUD Gatot Subroto",style: Styles.styleRegular12,),
        SizedBox(
          height: 12,
        ),
        CustomRating()
      ],
    );
  }
}