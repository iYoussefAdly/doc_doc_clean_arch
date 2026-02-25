import 'package:doc_doc_clean_arch/core/utils/functions/show_snack_bar.dart';
import 'package:doc_doc_clean_arch/features/search/presentation/manager/search_result_cubit/search_result_cubit.dart';
import 'package:doc_doc_clean_arch/features/search/presentation/views/widgets/search_result_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultItemBuilder extends StatelessWidget {
  const SearchResultItemBuilder({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SearchResultCubit, SearchResultState>(
      listener: (context, state) {
        if (state is SearchResultFailure) {
          showSnackBar(context, message: state.errorMessage, color: Colors.red);
        }
      },
      builder: (context, state) {
        if (state is SearchResultInitial) {
          return Center(child: Text(state.message));
        } else if (state is SearchResultSuccess) {
          return SearchResultView(doctors: state.doctorResult);
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
