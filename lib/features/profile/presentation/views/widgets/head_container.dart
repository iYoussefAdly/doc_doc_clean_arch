import 'package:doc_doc_clean_arch/constants.dart';
import 'package:doc_doc_clean_arch/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HeadContainer extends StatelessWidget {
  const HeadContainer({
    super.key,
    this.height,
  });

  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? MediaQuery.of(context).size.height * 0.35,
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(color: kTextPrimaryColor),
      child: Padding(
        padding: const EdgeInsets.only(top: 80),
        child: Align(
          alignment: AlignmentGeometry.topCenter,
          child: CustomAppBar(title: "Profile"),
        ),
      ),
    );
  }
}
