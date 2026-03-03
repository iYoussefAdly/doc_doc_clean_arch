import 'package:doc_doc_clean_arch/constants.dart';
import 'package:doc_doc_clean_arch/core/utils/functions/build_border.dart';
import 'package:doc_doc_clean_arch/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomProfileTextField extends StatelessWidget {
  const CustomProfileTextField({
    super.key,
    required this.hintText,
    required this.controller,
  });
  final String hintText;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: kTextFiedColor,
        focusedBorder: buildBorder(
          borderRadius: 10,
          borderColor: kTextPrimaryColor,
        ),
        enabledBorder: buildBorder(
          borderRadius: 10,
          borderColor: kBorderTextFieldColor,
        ),
        hintText: hintText,
        hintStyle: Styles.styleMedium12,
      ),
    );
  }
}
