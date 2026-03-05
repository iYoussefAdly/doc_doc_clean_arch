import 'package:doc_doc_clean_arch/features/profile/presentation/views/widgets/custom_profile_text_field.dart';
import 'package:flutter/material.dart';

class UpdateProfileTextFields extends StatelessWidget {
  const UpdateProfileTextFields({
    super.key,
    required this.nameController,
    required this.emailController,
    required this.phoneController,
    required this.genderController,
    required this.passwordController,
  });
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController phoneController;
  final TextEditingController genderController;
  final TextEditingController passwordController;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomProfileTextField(hintText: "name", controller: nameController),
        SizedBox(height: 16),
        CustomProfileTextField(hintText: "email", controller: emailController),
        SizedBox(height: 16),
        CustomProfileTextField(hintText: "phone", controller: phoneController),
        SizedBox(height: 16),
        CustomProfileTextField(
          hintText: "gender",
          controller: genderController,
        ),
        SizedBox(height: 16),
        CustomProfileTextField(
          hintText: "password",
          controller: passwordController,
        ),
      ],
    );
  }
}
