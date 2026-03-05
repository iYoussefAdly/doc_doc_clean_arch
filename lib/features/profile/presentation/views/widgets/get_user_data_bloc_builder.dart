import 'package:doc_doc_clean_arch/core/utils/functions/show_snack_bar.dart';
import 'package:doc_doc_clean_arch/features/profile/presentation/manager/get_user_data_cubit/get_user_data_cubit.dart';
import 'package:doc_doc_clean_arch/features/profile/presentation/views/widgets/name_email_and_phone.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GetUserDataBlocBuilder extends StatelessWidget {
  const GetUserDataBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GetUserDataCubit, GetUserDataState>(
      listener: (context, state) {
        if (state is GetUserDataFailure) {
          showSnackBar(context, message: state.errorMessage, color: Colors.red);
        }
      },
      builder: (context, state) {
        if (state is GetUserDataSuccess) {
          return NameEmailAndPhone(profileUserEntity: state.user);
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
