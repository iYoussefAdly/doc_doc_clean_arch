import 'package:doc_doc_clean_arch/core/utils/styles.dart';
import 'package:flutter/material.dart';

class UserDetails extends StatelessWidget {
  const UserDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, bottom: 30),
      child: Column(
        children: [
          SizedBox(height: 100),
          Text(
            "Omar Ahmed",
            style: Styles.styleSemiBold18.copyWith(fontSize: 20),
          ),
          SizedBox(height: 8),
          Text("omarahmed14@gmail.com", style: Styles.styleRegular14),
          SizedBox(height: 8),
          Text("01204188922", style: Styles.styleRegular14),
        ],
      ),
    );
  }
}
