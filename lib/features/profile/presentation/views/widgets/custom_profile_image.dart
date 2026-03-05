import 'package:doc_doc_clean_arch/constants.dart';
import 'package:doc_doc_clean_arch/core/utils/app_router.dart';
import 'package:doc_doc_clean_arch/core/utils/asset_data.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomProfileImage extends StatelessWidget {
  const CustomProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 120,
          width: 120,
          decoration: const BoxDecoration(shape: BoxShape.circle),
          clipBehavior: Clip.antiAlias,
          child: Image.asset(AssetData.profileImage, fit: BoxFit.cover),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            height: 32,
            width: 32,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: kBorderColor,
            ),
            child: InkWell(
              onTap: () =>
                  GoRouter.of(context).push(AppRouter.kUpdateProfileView),
              child: Icon(
                Icons.edit_outlined,
                size: 18,
                color: kTextPrimaryColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
