import 'package:doc_doc_clean_arch/core/utils/functions/setub_service_locator.dart';
import 'package:doc_doc_clean_arch/core/utils/functions/show_snack_bar.dart';
import 'package:doc_doc_clean_arch/core/utils/styles.dart';
import 'package:doc_doc_clean_arch/core/widgets/custom_button_widget.dart';
import 'package:doc_doc_clean_arch/features/profile/domain/use_cases/params/update_profile_param.dart';
import 'package:doc_doc_clean_arch/features/profile/presentation/manager/get_user_data_cubit/get_user_data_cubit.dart';
import 'package:doc_doc_clean_arch/features/profile/presentation/manager/update_profile_cubit/update_profile_cubit.dart';
import 'package:doc_doc_clean_arch/features/profile/presentation/views/widgets/personal_info_app_bar.dart';
import 'package:doc_doc_clean_arch/features/profile/presentation/views/widgets/profile_image.dart';
import 'package:doc_doc_clean_arch/features/profile/presentation/views/widgets/update_profile_text_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UpdateProfileInformationViewBody extends StatelessWidget {
  const UpdateProfileInformationViewBody({super.key});
  static final TextEditingController nameController = TextEditingController();
  static final TextEditingController emailController = TextEditingController();
  static final TextEditingController phoneController = TextEditingController();
  static final TextEditingController genderController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 40, left: 16, right: 16),
        child: BlocConsumer<UpdateProfileCubit, UpdateProfileState>(
          listener: (context, state) {
            if (state is UpdateProfileSuccess) {
              getIt<GetUserDataCubit>().getUserData();
              Navigator.pop(context);
              showSnackBar(
                context,
                message: "Updated Successfully",
                color: Colors.green,
              );
            } else if (state is UpdateProfileFailure) {
              showSnackBar(
                context,
                message: state.errorMessage,
                color: Colors.red,
              );
            }
          },
          builder: (context, state) {
            return Column(
              children: [
                PersonalInfoAppBar(title: 'personal information'),
                SizedBox(height: 48),
                SizedBox(height: 71),
                UpdateProfileTextFields(
                  nameController: nameController,
                  emailController: emailController,
                  phoneController: phoneController,
                  genderController: genderController,
                ),
                SizedBox(height: 24),
                Text(
                  "When you set up your personal information settings, you\nshould take care to provide accurate information.",
                  style: Styles.styleRegular12,
                ),
                SizedBox(height: 60),
                CustomButtonWidget(
                  isLoading: state is UpdateProfileLoading,
                  buttonName: "Save",
                  onTap: () {
                    BlocProvider.of<UpdateProfileCubit>(context).updateProfile(
                      params: UpdateProfileParam(
                        name: nameController.text.trim(),
                        email: emailController.text.trim(),
                        phone: phoneController.text.trim(),
                        gender: genderController.text.trim(),
                      ),
                    );
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
