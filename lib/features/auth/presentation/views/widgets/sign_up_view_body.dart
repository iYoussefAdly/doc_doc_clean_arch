import 'package:doc_doc_clean_arch/core/utils/app_router.dart';
import 'package:doc_doc_clean_arch/core/utils/functions/show_snack_bar.dart';
import 'package:doc_doc_clean_arch/core/widgets/custom_button_widget.dart';
import 'package:doc_doc_clean_arch/features/auth/presentation/manager/register_cubit/register_cubit.dart';
import 'package:doc_doc_clean_arch/features/auth/presentation/views/widgets/auth_images.dart';
import 'package:doc_doc_clean_arch/features/auth/presentation/views/widgets/auth_intro.dart';
import 'package:doc_doc_clean_arch/features/auth/presentation/views/widgets/custom_bottom_text.dart';
import 'package:doc_doc_clean_arch/features/auth/presentation/views/widgets/custom_divider.dart';
import 'package:doc_doc_clean_arch/features/auth/presentation/views/widgets/sign_up_text_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SignUpViewBody extends StatelessWidget {
  SignUpViewBody({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final TextEditingController genderController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterCubit, RegisterState>(
      listener: (context, state) {
        if (state is RegisterFailure) {
          showSnackBar(context, state.errorMessage);
        }
      },
      child: SingleChildScrollView(
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
                SizedBox(height: 80),
                Padding(
                  padding: const EdgeInsets.only(left: 7),
                  child: AuthIntro(
                    text1: 'Create Account',
                    text2:
                        "Sign up now and start exploring all that our\napp has to offer. We're excited to welcome\nyou to our community!",
                  ),
                ),
                SizedBox(height: 36),
                SignUpTexFields(
                  emailController: emailController,
                  phoneController: phoneController,
                  nameController: nameController,
                  genderController: genderController,
                  passwordController: passwordController,
                  confirmPasswordController: confirmPasswordController,
                ),
                SizedBox(height: 32),
                CustomButtonWidget(buttonName: "Create Account", onTap: () {}),
                SizedBox(height: 46),
                CustomDivider(text: 'Or sign up with'),
                SizedBox(height: 32),
                Center(child: AuthImages()),
                SizedBox(height: 32),
                Center(
                  child: CustomBottomText(
                    text1: 'Already have an account?',
                    text2: 'Sign in',
                    onTap: () {
                      GoRouter.of(
                        context,
                      ).pushReplacement(AppRouter.kSignInView);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
