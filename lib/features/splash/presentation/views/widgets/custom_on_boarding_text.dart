import 'package:doc_doc_clean_arch/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomOnBoardingText extends StatelessWidget {
  const CustomOnBoardingText({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: Text("Best Doctor", style: Styles.styleBold32)),
        Text("Appointment App", style: Styles.styleBold32),
      ],
    );
  }
}