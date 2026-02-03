import 'package:doc_doc_clean_arch/core/utils/asset_data.dart';
import 'package:flutter/material.dart';

class CustomDoctorImage extends StatelessWidget {
  const CustomDoctorImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      width: 110,
      height: 120,
      child: Image.asset(AssetData.doctor2, fit: BoxFit.fill),
    );
  }
}
