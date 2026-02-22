import 'package:doc_doc_clean_arch/features/search/presentation/views/widgets/search_text_field.dart';
import 'package:doc_doc_clean_arch/features/search/presentation/views/widgets/sort_button.dart';
import 'package:flutter/material.dart';
class SearchSection extends StatelessWidget {
  const SearchSection({super.key, required this.searchController});
  final TextEditingController searchController;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: SearchTextField(searchController: searchController)),
        SizedBox(width: 12),
        SortButton(onTap: () {}),
      ],
    );
  }
}

