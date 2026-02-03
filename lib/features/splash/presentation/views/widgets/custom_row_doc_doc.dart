import 'package:doc_doc_clean_arch/core/utils/asset_data.dart';
import 'package:flutter/material.dart';

class CustomRowDocDoc extends StatelessWidget {
  const CustomRowDocDoc({
    super.key,
    required this.width1,
    required this.width2,
  });
  final double width1;
  final double width2;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(width: width1, child: Image.asset(AssetData.groupImage)),
        SizedBox(width: 15),
        SizedBox(width: width2, child: Image.asset(AssetData.docdocImage)),
      ],
    );
  }
}
