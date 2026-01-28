import 'package:doc_doc_clean_arch/core/utils/styles.dart';
import 'package:flutter/material.dart';

class AuthIntro extends StatelessWidget {
  const AuthIntro({super.key, required this.text1, required this.text2});
  final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text1, style: Styles.styleBold24),
        SizedBox(height: 8),
        Text(text2,style: Styles.styleRegular14,),
      ],
    );
  }
}
