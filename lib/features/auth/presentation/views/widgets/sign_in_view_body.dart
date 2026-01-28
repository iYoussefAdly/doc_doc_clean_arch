import 'package:doc_doc_clean_arch/features/auth/presentation/views/widgets/auth_intro.dart';
import 'package:flutter/material.dart';
class SignInViewBody extends StatelessWidget {
  const SignInViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 26),
          Padding(
            padding: const EdgeInsets.only(left: 7),
            child: AuthIntro(text1: 'Welcome Back',text2: "We're excited to have you back, can't wait to\nsee what you've been up to since you last\nlogged in.",)
          ),
          
          ],
      ),
    );
  }
}




