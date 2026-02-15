import 'package:doc_doc_clean_arch/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomAboutSectionWidget extends StatelessWidget {
  const CustomAboutSectionWidget({super.key, required this.head, required this.details});
  final String head;
  final String details;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          head,
          style: Styles.styleSemiBold16.copyWith(color: Colors.black),
        ),
        SizedBox(height: 12),
        Text(
          details,
          style: Styles.styleRegular14,
          softWrap: true,
          overflow: TextOverflow.visible,
        ),
      ],
    );
  }
}
