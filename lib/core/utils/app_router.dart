import 'package:doc_doc_clean_arch/features/splash/presentation/views/on_boarding_view.dart';
import 'package:doc_doc_clean_arch/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kOnBoardingView = "/OnBoardingView";
  static final router = GoRouter(
    routes: [
      GoRoute(path: "/", builder: (context, state) => SplashView()),
      GoRoute(
        path: kOnBoardingView,
        builder: (context, state) => OnBoardingView(),
      ),
    ],
  );
}
