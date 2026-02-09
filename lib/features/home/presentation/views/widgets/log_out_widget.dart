import 'package:doc_doc_clean_arch/core/utils/app_router.dart';
import 'package:doc_doc_clean_arch/core/utils/functions/show_snack_bar.dart';
import 'package:doc_doc_clean_arch/features/auth/presentation/manager/Logout_cubit/logout_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LogOutWidget extends StatelessWidget {
  const LogOutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LogoutCubit, LogoutState>(
      listener: (context, state) {
        if (state is LogoutSuccess) {
          GoRouter.of(context).pushReplacement(AppRouter.kSignInView);
        } else if (state is LogoutFailure) {
          showSnackBar(context, message: state.errorMessage, color: Colors.red);
        }
      },
      child: GestureDetector(
        onTap: () {
          BlocProvider.of<LogoutCubit>(context).logout();
        },
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color(0xffEDEDED),
            shape: BoxShape.circle,
          ),
          child: Icon(Icons.logout_outlined),
        ),
      ),
    );
  }
}
