import 'package:doc_doc_clean_arch/core/utils/app_router.dart';
import 'package:doc_doc_clean_arch/core/widgets/custom_fading_widget..dart';
import 'package:doc_doc_clean_arch/features/splash/presentation/views/widgets/cover_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    navigateToOnBoardingView();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CoverWidget(),
        Center(
          child: FancySplashAnimation(width1: 80, width2: 200),
        ),
      ],
    );
  }
  void navigateToOnBoardingView() {
    Future.delayed(
      Duration(seconds: 3),
      () => GoRouter.of(context).push(AppRouter.kOnBoardingView),
    );
  }
}
