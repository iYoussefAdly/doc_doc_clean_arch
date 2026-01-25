import 'package:doc_doc_clean_arch/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DocDocCleanArch());
}

class DocDocCleanArch extends StatelessWidget {
  const DocDocCleanArch({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DocDoc clean architecture',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home:SplashView()
    );
  }
}
  