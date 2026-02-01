import 'package:doc_doc_clean_arch/constants.dart';
import 'package:doc_doc_clean_arch/core/utils/styles.dart';
import 'package:doc_doc_clean_arch/features/home/data/models/category_model.dart';
import 'package:doc_doc_clean_arch/features/home/presentation/views/widgets/category_item_view.dart';
import 'package:flutter/material.dart';

class DoctorSpecialitySection extends StatelessWidget {
  const DoctorSpecialitySection({
    super.key,
    required this.categories,
  });

  final List<CategoryModel> categories;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text("Doctor Speciality", style: Styles.styleSemiBold18),
            Spacer(),
            Text(
              "See all",
              style: Styles.styleRegular12.copyWith(
                color: kTextPrimaryColor,
              ),
            ),
          ],
        ),
        SizedBox(height: 16),
        CategoryItemView(categories: categories),
      ],
    );
  }
}