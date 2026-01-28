import 'package:doc_doc_clean_arch/core/utils/asset_data.dart';
import 'package:flutter/material.dart';

class AuthImages extends StatelessWidget {
  const AuthImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(AssetData.googleImage),
        SizedBox(width: 32,),
        Image.asset(AssetData.faceBookImage),
        SizedBox(
          width: 32,
        ),
        Image.asset(AssetData.appleImage),
      ],
    );
  }
}