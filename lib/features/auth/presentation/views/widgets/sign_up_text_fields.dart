import 'package:doc_doc_clean_arch/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class SignUpTexFields extends StatelessWidget {
  SignUpTexFields({
    super.key,
    required this.emailController,
    required this.phoneController,
    required this.nameController,
    required this.genderController,
    required this.passwordController,
    required this.confirmPasswordController,
  });
  final TextEditingController emailController;
  final TextEditingController phoneController;
  final TextEditingController nameController;
  final TextEditingController genderController;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextField(hintText: "Name", controller: nameController),
        SizedBox(height: 16),
        CustomTextField(hintText: "Email", controller: emailController),
        SizedBox(height: 16),
        CustomTextField(hintText: "Phone", controller: phoneController),
        SizedBox(height: 16),
        CustomTextField(hintText: "Gender", controller: genderController),
        SizedBox(height: 16),
        CustomTextField(
          hintText: "Password",
          controller: passwordController,
          isItPassword: true,
          isObscured: true,
        ),
        SizedBox(height: 16),
        CustomTextField(
          hintText: "ConfirmPassword",
          controller: confirmPasswordController,
          isItPassword: true,
          isObscured: true,
        ),
      ],
    );
  }
}
