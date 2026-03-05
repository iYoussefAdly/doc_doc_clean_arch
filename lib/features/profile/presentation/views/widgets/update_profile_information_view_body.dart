import 'package:doc_doc_clean_arch/core/utils/styles.dart';
import 'package:doc_doc_clean_arch/core/widgets/custom_button_widget.dart';
import 'package:doc_doc_clean_arch/features/profile/presentation/views/widgets/personal_info_app_bar.dart';
import 'package:doc_doc_clean_arch/features/profile/presentation/views/widgets/profile_image.dart';
import 'package:doc_doc_clean_arch/features/profile/presentation/views/widgets/update_profile_text_fields.dart';
import 'package:flutter/material.dart';

class UpdateProfileInformationViewBody extends StatelessWidget {
  const UpdateProfileInformationViewBody({super.key});
  static final TextEditingController nameController = TextEditingController();
  static final TextEditingController emailController = TextEditingController();
  static final TextEditingController phoneController = TextEditingController();
  static final TextEditingController genderController = TextEditingController();
  static final TextEditingController passwordController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 40, left: 16, right: 16),
        child: Column(
          children: [
            PersonalInfoAppBar(title: 'personal information'),
            SizedBox(height: 48),
            ProfileImage(),
            SizedBox(height: 51),
            UpdateProfileTextFields(
              nameController: nameController,
              emailController: emailController,
              phoneController: phoneController,
              genderController: genderController,
              passwordController: passwordController,
            ),
            SizedBox(height: 24),
            Text(
              "When you set up your personal information settings, you\nshould take care to provide accurate information.",
              style: Styles.styleRegular12,
            ),
            SizedBox(height: 60),
            CustomButtonWidget(buttonName: "Save", onTap: () {}),
          ],
        ),
      ),
    );
  }
}
