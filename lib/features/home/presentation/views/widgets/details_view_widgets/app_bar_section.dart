import 'package:doc_doc_clean_arch/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
class AppBarSection extends StatelessWidget {
  const AppBarSection({super.key, required this.doctorName});
  final String doctorName;
  @override
  Widget build(BuildContext context) {
    return CustomAppBar(title: doctorName);
  }
}
