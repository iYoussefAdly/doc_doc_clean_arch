import 'package:doc_doc_clean_arch/features/auth/presentation/views/sign_in_view.dart';
import 'package:doc_doc_clean_arch/features/auth/presentation/views/sign_up_view.dart';
import 'package:doc_doc_clean_arch/features/home/domain/entities/doctor_entity.dart';
import 'package:doc_doc_clean_arch/features/home/presentation/views/details_view.dart';
import 'package:doc_doc_clean_arch/features/home/presentation/views/home_view.dart';
import 'package:doc_doc_clean_arch/features/splash/presentation/views/on_boarding_view.dart';
import 'package:doc_doc_clean_arch/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kDetailsView = "/DetailsView";
  static const kOnBoardingView = "/OnBoardingView";
  static const kSignInView = "/SignInView";
  static const kSignUpView = "/SignUpView";
  static const kHomeView = "/HomeView";
  static final router = GoRouter(
    routes: [
      GoRoute(path: "/", builder: (context, state) => SplashView()),
      GoRoute(
        path: kOnBoardingView,
        builder: (context, state) => OnBoardingView(),
      ),
      GoRoute(
        path: kOnBoardingView,
        builder: (context, state) => OnBoardingView(),
      ),
      GoRoute(path: kSignInView, builder: (context, state) => SignInView()),
      GoRoute(path: kSignUpView, builder: (context, state) => SignUpView()),
      GoRoute(
        path: kHomeView,
        builder: (context, state) {
          final name = state.extra as String;
          return HomeView(name: name);
        },
      ),
      GoRoute(
        path: kDetailsView,
        builder: (context, state) {
          final doctor = state.extra as DoctorEntity;
          return DetailsView(doctor: doctor);
        },
      ),
    ],
  );
}
