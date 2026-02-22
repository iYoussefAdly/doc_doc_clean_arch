import 'package:doc_doc_clean_arch/core/widgets/custom_app_bar.dart';
import 'package:doc_doc_clean_arch/features/search/presentation/views/widgets/search_section.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});
  static TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 30),
      child: Column(
        children: [
          CustomAppBar(title: "Search"),
          SizedBox(height: 32),
          SearchSection(searchController: searchController),
        ],
      ),
    );
  }
}
