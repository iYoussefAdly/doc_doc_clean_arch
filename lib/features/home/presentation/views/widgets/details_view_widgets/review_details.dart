import 'package:doc_doc_clean_arch/constants.dart';
import 'package:doc_doc_clean_arch/core/utils/styles.dart';
import 'package:flutter/material.dart';

class ReviewDetails extends StatelessWidget {
  const ReviewDetails({super.key, required this.name, required this.comment});
  final String name;
  final String comment;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(
              name,
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
              comment,
              style: Styles.styleRegular12,
            ),
          ),
        ],
      ),
    );
  }
}
