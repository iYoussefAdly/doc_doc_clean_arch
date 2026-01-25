import 'package:doc_doc_clean_arch/core/utils/app_router.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const DocDocCleanArch());
}
class DocDocCleanArch extends StatelessWidget {
  const DocDocCleanArch({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'DocDoc clean architecture',
      routerConfig:AppRouter.router,
    );
  }
}
 