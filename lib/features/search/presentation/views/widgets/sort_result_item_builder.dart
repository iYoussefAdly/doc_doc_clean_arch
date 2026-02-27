import 'package:doc_doc_clean_arch/core/utils/functions/show_snack_bar.dart';
import 'package:doc_doc_clean_arch/features/search/presentation/manager/sort_result_cubit/sort_result_cubit.dart';
import 'package:doc_doc_clean_arch/features/search/presentation/views/widgets/sort_result_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class SortResultItemBuilder extends StatelessWidget {
  const SortResultItemBuilder({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SortResultCubit, SortResultState>(
      listener: (context, state) {
        if (state is SortResultFailure) {
          showSnackBar(context, message: state.errorMessge, color: Colors.red);
        }
      },
      builder: (context, state) {
        if (state is SortResultSuccess) {
          return SortResultView(doctors: state.doctors);
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
