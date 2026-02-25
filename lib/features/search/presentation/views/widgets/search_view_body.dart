import 'package:doc_doc_clean_arch/core/widgets/custom_app_bar.dart';
import 'package:doc_doc_clean_arch/features/home/presentation/views/widgets/home_view_widgets/doctor_item_view_builder.dart';
import 'package:doc_doc_clean_arch/features/search/presentation/views/widgets/search_result_view.dart';
import 'package:doc_doc_clean_arch/features/search/presentation/views/widgets/search_section.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key, this.onBackPressed});
  static TextEditingController searchController = TextEditingController();
  final VoidCallback? onBackPressed;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 30),
            child: Column(
              children: [
                CustomAppBar(title: "Search", onBackPressed: onBackPressed),
                SizedBox(height: 32),
                SearchSection(searchController: searchController),
                SizedBox(height: 24),
              ],
            ),
          ),
        ),
        SliverFillRemaining(
          child: Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: SearchResultView(doctors: doctors),
            ),
          ),
        ),
      ],
    );
  }
}
