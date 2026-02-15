import 'package:doc_doc_clean_arch/constants.dart';
import 'package:doc_doc_clean_arch/core/utils/styles.dart';
import 'package:flutter/material.dart';

class TabsRow extends StatelessWidget {
  const TabsRow({
    super.key,
    required this.onAboutTap,
    required this.onLocationTap,
    required this.onReviewTap,
    required this.selectedIndex,
  });
  final void Function() onAboutTap;
  final void Function() onLocationTap;
  final void Function() onReviewTap;
  final int selectedIndex;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: onAboutTap,
            child: Text(
              "About",
              style: selectedIndex == 0
                  ? Styles.styleBold14.copyWith(color: kTextPrimaryColor)
                  : Styles.styleBold14,
            ),
          ),
          InkWell(
            onTap: onLocationTap,
            child: Text(
              "Location",
              style: selectedIndex == 1
                  ? Styles.styleBold14.copyWith(color: kTextPrimaryColor)
                  : Styles.styleBold14,
            ),
          ),
          InkWell(
            onTap: onReviewTap,
            child: Text(
              "Review",
              style: selectedIndex == 2
                  ? Styles.styleBold14.copyWith(color: kTextPrimaryColor)
                  : Styles.styleBold14,
            ),
          ),
        ],
      ),
    );
  }
}
