import 'package:doc_doc_clean_arch/core/widgets/custom_button_widget.dart';
import 'package:doc_doc_clean_arch/core/widgets/custom_text_field.dart';
import 'package:doc_doc_clean_arch/features/auth/presentation/views/widgets/auth_images.dart';
import 'package:doc_doc_clean_arch/features/auth/presentation/views/widgets/auth_intro.dart';
import 'package:doc_doc_clean_arch/features/auth/presentation/views/widgets/custom_bottom_text.dart';
import 'package:doc_doc_clean_arch/features/auth/presentation/views/widgets/custom_divider.dart';
import 'package:doc_doc_clean_arch/features/auth/presentation/views/widgets/remember_me_and_forget_pass_widget.dart';
import 'package:flutter/material.dart';

class SignInViewBody extends StatelessWidget {
  SignInViewBody({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
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
          CustomTextField(hintText: "Email", controller: emailController),
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
          CustomButtonWidget(buttonName: "Login", onTap: () {}),
          SizedBox(height: 46),
          CustomDivider(),
          SizedBox(height: 32),
          Center(child: AuthImages()),
          SizedBox(height: 32),
          Center(child: CustomBottomText()),
        ],
      ),
    ),
  ),
);
  }
}
