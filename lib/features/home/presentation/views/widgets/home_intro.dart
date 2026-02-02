import 'package:doc_doc_clean_arch/core/utils/styles.dart';
import 'package:doc_doc_clean_arch/features/home/presentation/views/widgets/custom_notification.dart';
import 'package:flutter/material.dart';

class HomeIntro extends StatelessWidget {
  const HomeIntro({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("Hi, $name!", style: Styles.styleBold18),
      subtitle: Text("How Are you Today?", style: Styles.styleRegular11),
      trailing: CustomNotification(),
    );
  }
}
