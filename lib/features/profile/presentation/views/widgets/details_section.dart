import 'package:doc_doc_clean_arch/features/profile/presentation/views/widgets/details_container.dart';
import 'package:doc_doc_clean_arch/features/profile/presentation/views/widgets/user_details.dart';
import 'package:flutter/material.dart';

class DetailsSection extends StatelessWidget {
  const DetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        DetailsContainer(),
        Positioned(
          top: -60,
          left: 0,
          right: 0,
          child: Center(child: UserDetails()),
        ),
      ],
    );
  }
}
