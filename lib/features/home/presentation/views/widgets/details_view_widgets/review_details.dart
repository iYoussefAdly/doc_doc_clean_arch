import 'package:doc_doc_clean_arch/constants.dart';
import 'package:doc_doc_clean_arch/core/utils/styles.dart';
import 'package:flutter/material.dart';

class ReviewDetails extends StatelessWidget {
  const ReviewDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(
              "Jane Cooper",
              style: Styles.styleSemiBold16.copyWith(color: Colors.black),
            ),
            subtitle: Row(
              children: List.generate(
                5,
                (index) => Icon(Icons.star, color: kStarColor, size: 20),
              ),
            ),
            trailing: Text("Today", style: Styles.styleRegular12),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.5),
            child: Text(
              "As someone who lives in a remote area with\nlimited access to healthcare, this telemedicine\napp has been a game changer for me. I can\neasily schedule virtual appointments with\ndoctors and get the care I need without having\nto travel long distances.",
              style: Styles.styleRegular12,
            ),
          ),
        ],
      ),
    );
  }
}
