import 'package:doc_doc_clean_arch/features/auth/presentation/manager/register_cubit/register_cubit.dart';
import 'package:doc_doc_clean_arch/features/auth/presentation/views/widgets/sign_up_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(),
      child: Scaffold(body: SignUpViewBody()),
    );
  }
}
