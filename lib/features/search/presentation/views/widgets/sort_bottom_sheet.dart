import 'package:doc_doc_clean_arch/core/widgets/custom_button_widget.dart';
import 'package:doc_doc_clean_arch/features/search/presentation/views/widgets/sort_bottom_sheet_filter_section.dart';
import 'package:doc_doc_clean_arch/features/search/presentation/views/widgets/sort_bottom_sheet_header.dart';
import 'package:flutter/material.dart';
class SortBottomSheet extends StatelessWidget {
  const SortBottomSheet({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 8),
          Center(child: SortBottomSheetHeader()),
          SizedBox(height: 35),
          SortBottomSheetFilterSection(),
          Expanded(child: SizedBox()),
          CustomButtonWidget(buttonName: "Done", onTap: (){})
        ],
      ),
    );
  }
}
