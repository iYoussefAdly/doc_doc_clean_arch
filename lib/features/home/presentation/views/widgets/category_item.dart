import 'package:doc_doc_clean_arch/constants.dart';
import 'package:doc_doc_clean_arch/core/utils/styles.dart';
import 'package:doc_doc_clean_arch/features/home/data/models/category_model.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.categoryModel});
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(kCategoryItemColor),
          ),
          child: Center(
            child: SizedBox(
              height: 24,
              width: 24,
              child: Image.asset(categoryModel.image, fit: BoxFit.fill),
            ),
          ),
        ),
        SizedBox(height: 12),
        Text(categoryModel.title, style: Styles.styleRegular12),
      ],
    );
  }
}
