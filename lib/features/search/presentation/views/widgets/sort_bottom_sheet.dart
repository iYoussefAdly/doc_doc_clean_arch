import 'package:doc_doc_clean_arch/core/widgets/custom_button_widget.dart';
import 'package:doc_doc_clean_arch/features/search/domain/use_cases/params/sort_param.dart';
import 'package:doc_doc_clean_arch/features/search/presentation/manager/sort_result_cubit/sort_result_cubit.dart';
import 'package:doc_doc_clean_arch/features/search/presentation/views/widgets/sort_bottom_sheet_filter_section.dart';
import 'package:doc_doc_clean_arch/features/search/presentation/views/widgets/sort_bottom_sheet_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SortBottomSheet extends StatelessWidget {
  const SortBottomSheet({super.key});
  static final TextEditingController cityIdContorller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 8),
            Center(child: SortBottomSheetHeader()),
            SizedBox(height: 35),
            SortBottomSheetFilterSection(cityIdController: cityIdContorller),
            SizedBox(height: 140),
            CustomButtonWidget(
              buttonName: "Done",
              onTap: () {
                BlocProvider.of<SortResultCubit>(context).sortDoctors(
                  param: SortParam(
                    cityId: int.parse(cityIdContorller.text.trim()),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
