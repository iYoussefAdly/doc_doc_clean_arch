import 'package:doc_doc_clean_arch/constants.dart';
import 'package:doc_doc_clean_arch/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({
    super.key,
    required this.buttonName,
    required this.onTap,
  });
  final String buttonName;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 14),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: kTextPrimaryColor,
        ),
        child: Center(child: Text(buttonName, style: Styles.styleSemiBold16)),
      ),
    );
  }
}
