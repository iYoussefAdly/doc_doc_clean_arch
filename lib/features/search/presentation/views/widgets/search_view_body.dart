import 'package:doc_doc_clean_arch/core/utils/functions/setub_service_locator.dart';
import 'package:doc_doc_clean_arch/core/widgets/custom_app_bar.dart';
import 'package:doc_doc_clean_arch/features/search/domain/repos/search_repo.dart';
import 'package:doc_doc_clean_arch/features/search/domain/use_cases/search_use_case.dart';
import 'package:doc_doc_clean_arch/features/search/domain/use_cases/sort_use_case.dart';
import 'package:doc_doc_clean_arch/features/search/presentation/manager/search_result_cubit/search_result_cubit.dart';
import 'package:doc_doc_clean_arch/features/search/presentation/manager/sort_result_cubit/sort_result_cubit.dart';
import 'package:doc_doc_clean_arch/features/search/presentation/views/widgets/search_section.dart';
import 'package:doc_doc_clean_arch/features/search/presentation/views/widgets/sort_and_search_item_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key, this.onBackPressed});
  final VoidCallback? onBackPressed;
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SearchResultCubit>(
          create: (context) => SearchResultCubit(
            searchUseCase: SearchUseCase(searchRepo: getIt<SearchRepo>()),
          ),
        ),
        BlocProvider<SortResultCubit>(
          create: (context) => SortResultCubit(
            SortUseCase(searchRepo: getIt<SearchRepo>()),
          ),
        ),
      ],
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 30),
              child: Column(
                children: [
                  CustomAppBar(title: "Search", onBackPressed: onBackPressed),
                  SizedBox(height: 32),
                  SearchSection(),
                  SizedBox(height: 24),
                ],
              ),
            ),
          ),
          SliverFillRemaining(
            child: Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: SortAndSearchItemBuildeer(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
