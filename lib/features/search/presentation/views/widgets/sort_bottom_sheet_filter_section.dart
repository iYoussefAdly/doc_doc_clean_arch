import 'package:doc_doc_clean_arch/core/utils/styles.dart';
import 'package:doc_doc_clean_arch/features/search/presentation/views/widgets/city_id_text_field.dart';
import 'package:flutter/material.dart';
class SortBottomSheetFilterSection extends StatelessWidget {
  const SortBottomSheetFilterSection({super.key, required this.cityIdController});
   final TextEditingController cityIdController;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("City ID", style: Styles.styleMedium16),
        SizedBox(
          height: 24,
        ),
        CityIdTextField(cityIdController: cityIdController),
      ],
    );
  }
}
