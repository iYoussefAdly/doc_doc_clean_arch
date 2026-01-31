import 'package:doc_doc_clean_arch/core/utils/app_router.dart';
import 'package:doc_doc_clean_arch/core/utils/functions/show_snack_bar.dart';
import 'package:doc_doc_clean_arch/core/widgets/custom_button_widget.dart';
import 'package:doc_doc_clean_arch/core/widgets/custom_text_field.dart';
import 'package:doc_doc_clean_arch/features/auth/domain/use_cases/params/login_params.dart';
import 'package:doc_doc_clean_arch/features/auth/presentation/manager/login_cubit/login_cubit.dart';
import 'package:doc_doc_clean_arch/features/auth/presentation/views/widgets/auth_images.dart';
import 'package:doc_doc_clean_arch/features/auth/presentation/views/widgets/auth_intro.dart';
import 'package:doc_doc_clean_arch/features/auth/presentation/views/widgets/custom_bottom_text.dart';
import 'package:doc_doc_clean_arch/features/auth/presentation/views/widgets/custom_divider.dart';
import 'package:doc_doc_clean_arch/features/auth/presentation/views/widgets/remember_me_and_forget_pass_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SignInViewBody extends StatelessWidget {
  SignInViewBody({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginFailure) {
          showSnackBar(context, state.errorMessage, Colors.red);
        } else if (state is LoginSuccess) {
          clearControllers();
          showSnackBar(context, "Login success", Colors.green);
          GoRouter.of(context).pushReplacement(AppRouter.kHomeView);
        }
      },
      builder: (context, state) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.only(left: 7),
                    child: AuthIntro(
                      text1: 'Welcome Back',
                      text2:
                          "We're excited to have you back, can't wait to\nsee what you've been up to since you last\nlogged in.",
                    ),
                  ),
                  SizedBox(height: 36),
                  CustomTextField(
                    hintText: "Email",
                    controller: emailController,
                  ),
                  SizedBox(height: 16),
                  CustomTextField(
                    hintText: "Password",
                    controller: passwordController,
                    isItPassword: true,
                    isObscured: true,
                  ),
                  SizedBox(height: 16),
                  RememberMeAndForgetPassWidget(),
                  SizedBox(height: 32),
                  CustomButtonWidget(
                    isLoading: state is LoginLoading,
                    buttonName: "Login",
                    onTap: () {
                      final params = LoginParams(
                        email: emailController.text.trim(),
                        password: passwordController.text.trim(),
                      );
                      BlocProvider.of<LoginCubit>(context).login(params);
                    },
                  ),
                  SizedBox(height: 46),
                  CustomDivider(text: 'Or sign in with'),
                  SizedBox(height: 32),
                  Center(child: AuthImages()),
                  SizedBox(height: 32),
                  Center(
                    child: CustomBottomText(
                      text1: "Don't have an account yet?",
                      text2: 'Sign up',
                      onTap: () {
                        GoRouter.of(
                          context,
                        ).pushReplacement(AppRouter.kSignUpView);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void clearControllers() {
    emailController.clear();
    passwordController.clear();
  }
}
