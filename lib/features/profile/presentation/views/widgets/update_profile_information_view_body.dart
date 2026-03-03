import 'package:doc_doc_clean_arch/features/profile/presentation/views/widgets/personal_info_app_bar.dart';
import 'package:flutter/material.dart';

class UpdateProfileInformationViewBody extends StatelessWidget {
  const UpdateProfileInformationViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40,left: 16,right: 16),
      child: Column(
        children: [
          PersonalInfoAppBar(title: 'personal information',)
        ],
      ),
    );
  }
}