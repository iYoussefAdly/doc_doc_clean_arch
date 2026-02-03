import 'package:doc_doc_clean_arch/core/utils/asset_data.dart';
import 'package:doc_doc_clean_arch/features/home/presentation/views/widgets/custom_near_by_container.dart';
import 'package:flutter/material.dart';

class CustomFindNearby extends StatelessWidget {
  const CustomFindNearby({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 0.210;
    return SizedBox(
      width: double.infinity,
      height: height,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          CustomNearByContainer(),
          Positioned(
            bottom: 4,
            left: 215,
            child: Image.asset(AssetData.nearByImage),
          ),
        ],
      ),
    );
  }
}
