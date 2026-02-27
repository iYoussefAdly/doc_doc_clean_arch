import 'package:doc_doc_clean_arch/features/search/presentation/manager/sort_result_cubit/sort_result_cubit.dart';
import 'package:doc_doc_clean_arch/features/search/presentation/views/widgets/search_result_item_builder.dart';
import 'package:doc_doc_clean_arch/features/search/presentation/views/widgets/sort_result_item_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SortAndSearchItemBuildeer extends StatelessWidget {
  const SortAndSearchItemBuildeer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SortResultCubit, SortResultState>(
      builder: (context, state) {
        if (state is SortResultInitial) {
          return const SearchResultItemBuilder();
        } else {
          return const SortResultItemBuilder();
        }
      },
    );
  }
}