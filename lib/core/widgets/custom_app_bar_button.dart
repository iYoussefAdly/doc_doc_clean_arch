import 'package:doc_doc_clean_arch/constants.dart';
import 'package:flutter/material.dart';
class CustomAppBarButton extends StatelessWidget {
  const CustomAppBarButton({super.key, required this.icon});
  final IconButton icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: kBorderColor),
      ),
      width: 40,
      height: 40,
      child: Center(child: icon),
    );
  }
}
