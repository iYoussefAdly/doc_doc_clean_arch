import 'package:doc_doc_clean_arch/constants.dart';
import 'package:doc_doc_clean_arch/core/utils/asset_data.dart';
import 'package:doc_doc_clean_arch/core/utils/styles.dart';
import 'package:doc_doc_clean_arch/features/home/data/models/category_model.dart';
import 'package:doc_doc_clean_arch/features/home/presentation/views/widgets/category_item_view.dart';
import 'package:doc_doc_clean_arch/features/home/presentation/views/widgets/custom_find_nearby.dart';
import 'package:doc_doc_clean_arch/features/home/presentation/views/widgets/home_intro.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
 const HomeViewBody({super.key});
 static List<CategoryModel> categories = [
  CategoryModel(image: AssetData.first, title: "General"),
  CategoryModel(image: AssetData.second, title: "Neurologic"),
  CategoryModel(image: AssetData.third, title: "Pediatric"),
  CategoryModel(image: AssetData.fourth, title: "Radiology"),
 ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 16, right: 16, bottom: 10),
      child: Column(
        children: [
          HomeIntro(),
          SizedBox(height: 16),
          CustomFindNearby(),
          SizedBox(height: 24),
          Column(
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
          ),
        ],
      ),
    );
  }
}
