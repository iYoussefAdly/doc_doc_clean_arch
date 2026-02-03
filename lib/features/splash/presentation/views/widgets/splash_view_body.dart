import 'package:doc_doc_clean_arch/core/utils/app_router.dart';
import 'package:doc_doc_clean_arch/core/utils/functions/checkUserLoggedIn.dart';
import 'package:doc_doc_clean_arch/core/utils/functions/save_and_get_user_name.dart';
import 'package:doc_doc_clean_arch/core/widgets/custom_fading_widget..dart';
import 'package:doc_doc_clean_arch/features/splash/presentation/views/widgets/cover_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);
  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    _navigate();
  }

  Future<void> _navigate() async {
    final isLoggedIn = await getUserIsLoggedIn();
    await Future.delayed(const Duration(seconds: 3));
    if (!mounted) return;
    if (isLoggedIn) {
      final name = await getUserName() ?? "";
      context.go(AppRouter.kHomeView, extra: name);
    } else {
      context.go(AppRouter.kOnBoardingView);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CoverWidget(),
        Center(child: FancySplashAnimation(width1: 80, width2: 200)),
      ],
    );
  }
}
