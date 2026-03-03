import 'package:doc_doc_clean_arch/core/utils/styles.dart';
import 'package:doc_doc_clean_arch/core/widgets/custom_app_bar_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PersonalInfoAppBar extends StatelessWidget {
  const PersonalInfoAppBar({
    super.key,
    required this.title,
    this.onBackPressed,
  });
  final String title;
  final VoidCallback? onBackPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
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
              color: title == "Profile" ? Colors.white : Colors.black,
            ),
          ),
        ),
        SizedBox(width: 41),
        Text(
          title,
          style: Styles.styleSemiBold18.copyWith(
            color: title == "Profile" ? Colors.white : Colors.black,
          ),
        ),
      ],
    );
  }
}
