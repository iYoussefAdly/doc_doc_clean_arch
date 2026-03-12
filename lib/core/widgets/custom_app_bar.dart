import 'package:doc_doc_clean_arch/core/utils/app_router.dart';
import 'package:doc_doc_clean_arch/core/utils/styles.dart';
import 'package:doc_doc_clean_arch/core/widgets/custom_app_bar_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, this.onBackPressed});
  final String title;
  final VoidCallback? onBackPressed;
  @override
  Widget build(BuildContext context) {
    final bool isProfile = title == "Profile";
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomAppBarButton(
          icon: IconButton(
            onPressed: () {
              if (onBackPressed != null) {
                onBackPressed!();
              } else {
                GoRouter.of(context).pop();
              }
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: isProfile ? Colors.white : Colors.black,
            ),
          ),
        ),
        Text(
          title,
          style: Styles.styleSemiBold18.copyWith(
            color: isProfile ? Colors.white : Colors.black,
          ),
        ),
        CustomAppBarButton(
          icon: IconButton(
            onPressed: () {
              if (isProfile) {
                GoRouter.of(context).push(AppRouter.kUpdateProfileView);
              }
            },
            icon: Icon(
              isProfile ? Icons.edit_outlined : Icons.more_horiz,
              color: isProfile ? Colors.white : Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
