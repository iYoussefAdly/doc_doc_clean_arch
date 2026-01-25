import 'package:doc_doc_clean_arch/core/utils/asset_data.dart';
import 'package:flutter/material.dart';

class CoverWidget extends StatelessWidget {
  const CoverWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Align(
            alignment: AlignmentGeometry.centerRight,
            child: Image.asset(AssetData.vector1Image,color: Color(0xffEAEEF5),)),
            Positioned(
              left: 20,
              top: 135,
              child: Image.asset(AssetData.vector2Image,color: Color(0xffEAEEF5),))
          ],
        ), 
        SizedBox(
          height: 185,
        ) 
      ],
    );
  }
}