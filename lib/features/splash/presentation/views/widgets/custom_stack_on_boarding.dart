import 'package:doc_doc_clean_arch/features/splash/presentation/views/widgets/cover_widget.dart';
import 'package:doc_doc_clean_arch/features/splash/presentation/views/widgets/custom_on_boarding_image.dart';
import 'package:doc_doc_clean_arch/features/splash/presentation/views/widgets/custom_on_boarding_text.dart';
import 'package:flutter/material.dart';

class CustomStackOnBoarding extends StatelessWidget {
  const CustomStackOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        CoverWidget(),
        CustomOnBoardingImage(),
        Positioned(
          left:65,
          top: 420,
          child: CustomOnBoardingText())
      ],
    );
  }
}