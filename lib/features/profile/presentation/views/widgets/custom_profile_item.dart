import 'package:doc_doc_clean_arch/constants.dart';
import 'package:doc_doc_clean_arch/core/utils/styles.dart';
import 'package:doc_doc_clean_arch/features/profile/data/models/profile_item_model.dart';
import 'package:flutter/material.dart';

class CustomProfileItem extends StatelessWidget {
  const CustomProfileItem({super.key, required this.profileItemModel});
  final ProfileItemModel profileItemModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(profileItemModel.image),
              SizedBox(width: 13),
              Text(
                profileItemModel.title,
                style: Styles.styleRegular14.copyWith(color: Colors.black),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        Divider(thickness: 2, color: kBorderColor),
      ],
    );
  }
}
