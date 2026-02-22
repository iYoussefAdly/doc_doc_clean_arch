import 'package:doc_doc_clean_arch/core/utils/styles.dart';
import 'package:doc_doc_clean_arch/core/widgets/custom_app_bar_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomAppBarButton(
          icon: IconButton(
            onPressed: () => GoRouter.of(context).pop(),
            icon: Icon(Icons.arrow_back_ios),
          ),
        ),
        Text(title, style: Styles.styleSemiBold18),
        CustomAppBarButton(
          icon: IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
        ),
      ],
    );
  }
}
