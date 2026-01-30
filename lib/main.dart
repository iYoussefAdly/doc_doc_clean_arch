import 'package:doc_doc_clean_arch/core/utils/app_router.dart';
import 'package:doc_doc_clean_arch/core/utils/functions/save_service_locator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await saveServiceLocator();
  runApp(const DocDocCleanArch());
}

class DocDocCleanArch extends StatelessWidget {
  const DocDocCleanArch({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        textTheme: GoogleFonts.interTextTheme(),
        fontFamily: GoogleFonts.inter().fontFamily,
      ),
      debugShowCheckedModeBanner: false,
      title: 'DocDoc clean architecture',
      routerConfig: AppRouter.router,
    );
  }
}
