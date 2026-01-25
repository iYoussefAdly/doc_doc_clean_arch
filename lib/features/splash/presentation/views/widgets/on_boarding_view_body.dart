import 'package:doc_doc_clean_arch/core/widgets/custom_button_widget.dart';
import 'package:doc_doc_clean_arch/features/splash/presentation/views/widgets/custom_on_boarding_details_text.dart';
import 'package:doc_doc_clean_arch/features/splash/presentation/views/widgets/custom_row_doc_doc.dart';
import 'package:doc_doc_clean_arch/features/splash/presentation/views/widgets/custom_stack_on_boarding.dart';
import 'package:flutter/material.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 32, top: 65),
        child: Column(
          children: [
            CustomRowDocDoc(width1: 40, width2: 100),
            SizedBox(height: 41),
            CustomStackOnBoarding(),
            SizedBox(height: 18),
            CustomOnBoardingDetailsText(),
            SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: CustomButtonWidget(buttonName: "Get Started", onTap: (){}),
            )
          ],
        ),
      ),
    );
  }
}


