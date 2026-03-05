import 'package:doc_doc_clean_arch/features/profile/presentation/views/widgets/details_section.dart';
import 'package:doc_doc_clean_arch/features/profile/presentation/views/widgets/head_container.dart';
import 'package:flutter/material.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key, this.onBackPressed});
  final VoidCallback? onBackPressed;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final height = constraints.maxHeight;
        final headerHeight = height * 0.35;
        final detailsTop = height * 0.30;
        return Stack(
          children: [
            HeadContainer(height: headerHeight, onBackPressed: onBackPressed),
            Positioned(
              top: detailsTop,
              left: 0,
              right: 0,
              bottom: 0,
              child: DetailsSection(),
            ),
          ],
        );
      },
    );
  }
}
