import 'package:doc_doc_clean_arch/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(icon: IconButton(onPressed: onPressed, icon: icon),) ;
  }
}