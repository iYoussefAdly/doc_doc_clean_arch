import 'package:doc_doc_clean_arch/features/profile/presentation/views/widgets/details_section.dart';
import 'package:doc_doc_clean_arch/features/profile/presentation/views/widgets/intro_section.dart';
import 'package:flutter/material.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        IntroSection(),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.3,
          left: 0,
          right: 0,
          child: DetailsSection(),
        ),
      ],
    );
  }
}
