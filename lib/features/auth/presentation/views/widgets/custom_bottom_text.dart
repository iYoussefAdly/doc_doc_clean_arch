import 'package:doc_doc_clean_arch/constants.dart';
import 'package:doc_doc_clean_arch/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomBottomText extends StatelessWidget {
  const CustomBottomText({
    super.key,
    required this.text1,
    required this.text2,
    required this.onTap,
  });
  final String text1;
  final String text2;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "By logging, you agree to our ",
                style: Styles.styleRegular11.copyWith(
                  color: kTextSecondaryColor,
                ),
              ),
              TextSpan(
                text: "Terms & Conditions ",
                style: Styles.styleRegular11.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: "and",
                style: Styles.styleRegular11.copyWith(
                  color: kTextSecondaryColor,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 6),
        Text(
          "PrivacyPolicy.",
          style: Styles.styleRegular11.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 24),
        GestureDetector(
          onTap:onTap,
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$text1 ",
                  style: Styles.styleRegular11.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: text2,
                  style: Styles.styleRegular11.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                    color: kTextPrimaryColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
