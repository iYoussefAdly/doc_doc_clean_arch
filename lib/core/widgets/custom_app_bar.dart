import 'package:doc_doc_clean_arch/core/utils/styles.dart';
import 'package:doc_doc_clean_arch/core/widgets/custom_app_bar_button.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.icon1, required this.icon2});
  final IconButton icon1;
  final IconButton icon2;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomAppBarButton(icon: icon1),
        Text("Dr Randy Wigham", style: Styles.styleSemiBold18),
        CustomAppBarButton(icon: icon2),
      ],
    );
  }
}
