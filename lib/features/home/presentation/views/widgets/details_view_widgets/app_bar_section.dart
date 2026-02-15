import 'package:doc_doc_clean_arch/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppBarSection extends StatelessWidget {
  const AppBarSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      icon1: IconButton(
        onPressed: () => GoRouter.of(context).pop(),
        icon: Icon(Icons.arrow_back_ios),
      ),
      icon2: IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
    );
  }
}