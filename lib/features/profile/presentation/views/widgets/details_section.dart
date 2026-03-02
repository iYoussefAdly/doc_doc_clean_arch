import 'package:doc_doc_clean_arch/features/profile/presentation/views/widgets/custom_profile_image.dart';
import 'package:flutter/material.dart';

class DetailsSection extends StatelessWidget {
  const DetailsSection({super.key});
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height * 0.75,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
          ),
          Positioned(
            left: width * 0.34,
            bottom: 565,
            child: CustomProfileImage(),
          ),
        ],
      ),
    );
  }
}
