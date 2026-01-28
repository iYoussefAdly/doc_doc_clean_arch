import 'package:doc_doc_clean_arch/constants.dart';
import 'package:doc_doc_clean_arch/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: kBorderAndHintTextColor,
            thickness: 1, 
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0,right: 8,bottom: 5),
          child: Text(
            "or sign in with",
            style: Styles.styleRegular12
          ),
        ),
        Expanded(child: Divider(color: kBorderAndHintTextColor, thickness: 1)),
      ],
    );
  }
}
