import 'package:doc_doc_clean_arch/constants.dart';
import 'package:flutter/material.dart';

class IntroSection extends StatelessWidget {
  const IntroSection({super.key});
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(height: height * 0.4, color: kTextPrimaryColor);
  }
}
