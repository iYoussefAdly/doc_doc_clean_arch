import 'package:doc_doc_clean_arch/core/utils/functions/setub_service_locator.dart';
import 'package:doc_doc_clean_arch/features/auth/domain/repos/auth_repo.dart';
import 'package:doc_doc_clean_arch/features/auth/domain/use_cases/login_use_case.dart';
import 'package:doc_doc_clean_arch/features/auth/presentation/manager/login_cubit/login_cubit.dart';
import 'package:doc_doc_clean_arch/features/auth/presentation/views/widgets/sign_in_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          LoginCubit(LoginUseCase(authRepo: getIt.get<AuthRepo>())),
      child: Scaffold(body: SignInViewBody()),
    );
  }
}
