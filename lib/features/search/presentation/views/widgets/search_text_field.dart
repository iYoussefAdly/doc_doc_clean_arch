import 'package:doc_doc_clean_arch/constants.dart';
import 'package:doc_doc_clean_arch/core/utils/functions/build_border.dart';
import 'package:doc_doc_clean_arch/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key, required this.searchController});
  final TextEditingController searchController;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: searchController,
      decoration: InputDecoration(
        fillColor: Color(0xffF2F2F2),
        filled: true,
        focusedBorder: buildBorder(
          borderRadius: 10,
          borderColor: kTextPrimaryColor,
        ),
        enabledBorder: buildBorder(
          borderRadius: 10,
          borderColor: kTextSecondaryColor,
        ),
        prefixIcon: Icon(Icons.search, color: kTextSecondaryColor),
        hintText: "Search",
        hintStyle: Styles.styleMedium12,
      ),
    );
  }
}
