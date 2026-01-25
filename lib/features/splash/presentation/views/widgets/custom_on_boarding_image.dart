import 'package:doc_doc_clean_arch/core/utils/asset_data.dart';
import 'package:flutter/material.dart';

class CustomOnBoardingImage extends StatelessWidget {
  const CustomOnBoardingImage({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.white, // واضح
            Colors.white.withOpacity(0.7),
            Colors.white.withOpacity(0.3),
            Colors.white.withOpacity(0.0),
          ],
        ).createShader(bounds);
      },
      blendMode: BlendMode.dstIn,
      child: Image.asset(AssetData.doctorImage),
    );
  }
}