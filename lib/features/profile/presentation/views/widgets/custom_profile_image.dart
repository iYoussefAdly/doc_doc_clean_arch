import 'package:doc_doc_clean_arch/constants.dart';
import 'package:doc_doc_clean_arch/core/utils/asset_data.dart';
import 'package:flutter/material.dart';

class CustomProfileImage extends StatelessWidget {
  const CustomProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(shape: BoxShape.circle),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Image.asset(AssetData.profileImage),
          ),
        ),
        Positioned(
          top: 100,
          left: 95,
          child: Container(
            decoration: BoxDecoration(
              color: kBorderColor,
              shape: BoxShape.circle,
            ),
            height: 30,
            width: 30,
            child: Icon(Icons.edit_outlined, color: kTextPrimaryColor),
          ),
        ),
      ],
    );
  }
}
