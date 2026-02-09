import 'package:doc_doc_clean_arch/core/utils/functions/setub_service_locator.dart';
import 'package:doc_doc_clean_arch/core/utils/styles.dart';
import 'package:doc_doc_clean_arch/features/auth/domain/repos/auth_repo.dart';
import 'package:doc_doc_clean_arch/features/auth/domain/use_cases/logout_use_case.dart';
import 'package:doc_doc_clean_arch/features/auth/presentation/manager/Logout_cubit/logout_cubit.dart';
import 'package:doc_doc_clean_arch/features/home/presentation/views/widgets/custom_notification.dart';
import 'package:doc_doc_clean_arch/features/home/presentation/views/widgets/log_out_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeIntro extends StatelessWidget {
  const HomeIntro({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          title: Text("Hi, $name!", style: Styles.styleBold18),
          subtitle: Text("How Are you Today?", style: Styles.styleRegular11),
          trailing: CustomNotification(),
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: BlocProvider(
            create: (context) => LogoutCubit(LogoutUseCase(authRepo: getIt<AuthRepo>())),
            child: LogOutWidget(),
          ),
        ),
      ],
    );
  }
}
