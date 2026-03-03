import 'package:doc_doc_clean_arch/core/utils/asset_data.dart';
import 'package:doc_doc_clean_arch/features/profile/data/models/profile_item_model.dart';
import 'package:doc_doc_clean_arch/features/profile/presentation/views/widgets/custom_profile_item.dart';
import 'package:flutter/material.dart';

class ProfileItemsView extends StatelessWidget {
  const ProfileItemsView({super.key});
  static final List<ProfileItemModel> items = [
    ProfileItemModel(
      image: AssetData.personalInformationIcon,
      title: "Personal Information",
    ),
    ProfileItemModel(image: AssetData.testIcon, title: "My Test & Diagnostic"),
    ProfileItemModel(image: AssetData.paymentIcon, title: "Payment"),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        items.length,
        (index) => Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: CustomProfileItem(profileItemModel: items[index]),
        ),
      ),
    );
  }
}
