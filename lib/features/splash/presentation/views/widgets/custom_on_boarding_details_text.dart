import 'package:doc_doc_clean_arch/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomOnBoardingDetailsText extends StatelessWidget {
  const CustomOnBoardingDetailsText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Manage and schedule all of your medical appointments easily",
          style: Styles.styleRegular10,
        ),
        Text(
          "with Docdoc to get a new experience.",
          style: Styles.styleRegular10,
        ),
      ],
    );
  }
}