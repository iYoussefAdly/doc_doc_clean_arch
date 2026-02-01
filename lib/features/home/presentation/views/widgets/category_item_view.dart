import 'package:doc_doc_clean_arch/features/home/data/models/category_model.dart';
import 'package:doc_doc_clean_arch/features/home/presentation/views/widgets/category_item.dart';
import 'package:flutter/material.dart';

class CategoryItemView extends StatelessWidget {
  const CategoryItemView({super.key, required this.categories});
  final List<CategoryModel> categories;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: categories
          .map((e) => Expanded(child: CategoryItem(categoryModel: e)))
          .toList(),
    );
  }
}
