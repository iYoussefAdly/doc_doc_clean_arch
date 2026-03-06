import 'package:doc_doc_clean_arch/core/utils/functions/setub_service_locator.dart';
import 'package:doc_doc_clean_arch/features/profile/domain/repos/profile_repo.dart';
import 'package:doc_doc_clean_arch/features/profile/domain/use_cases/update_user_data_use_case.dart';
import 'package:doc_doc_clean_arch/features/profile/presentation/manager/update_profile_cubit/update_profile_cubit.dart';
import 'package:doc_doc_clean_arch/features/profile/presentation/views/widgets/update_profile_information_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UpdateProfileInformationView extends StatelessWidget {
  const UpdateProfileInformationView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UpdateProfileCubit(
        updateUserDataUseCase: UpdateUserDataUseCase(
          profileRepo: getIt<ProfileRepo>(),
        ),
      ),
      child: const Scaffold(body: UpdateProfileInformationViewBody()),
    );
  }
}
