import 'package:doc_doc_clean_arch/constants.dart';
import 'package:doc_doc_clean_arch/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomRating extends StatelessWidget {
  const CustomRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.star, color: kStarColor, size: 16),
        SizedBox(width: 4),
        Text("4.8", style: Styles.styleRegular12),
        SizedBox(width: 4),
        Text("(4,279 reviews)", style: Styles.styleRegular12),
      ],
    );
  }
}
