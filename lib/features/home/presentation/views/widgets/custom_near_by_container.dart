import 'package:doc_doc_clean_arch/constants.dart';
import 'package:doc_doc_clean_arch/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomNearByContainer extends StatelessWidget {
  const CustomNearByContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xff2378F7), Color(0xff2C7FF9)],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 18, top: 12, bottom: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Book and\nschedule with\nnearest doctor",
              style: Styles.styleMedium18,
            ),
            SizedBox(height: 16),
            Container(
              width: 109,
              padding: EdgeInsets.all(14),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white,
              ),
              child: Center(
                child: Text(
                  "Find Nearby",
                  style: Styles.styleRegular12.copyWith(
                    color: kTextPrimaryColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
