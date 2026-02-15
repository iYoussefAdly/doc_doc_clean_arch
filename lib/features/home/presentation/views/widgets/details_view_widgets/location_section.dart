import 'package:doc_doc_clean_arch/core/utils/asset_data.dart';
import 'package:doc_doc_clean_arch/core/utils/styles.dart';
import 'package:doc_doc_clean_arch/features/home/presentation/views/widgets/details_view_widgets/custom_about_section_widget.dart';
import 'package:flutter/material.dart';

class LocationSection extends StatelessWidget {
  const LocationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAboutSectionWidget(head: "Practice Place", details: "Cairo, Egypt"),
        SizedBox(
          height: 18,
        ),
        Text("Location Map",style: Styles.styleSemiBold16.copyWith(color: Colors.black),),
        SizedBox(
          height: 12,
        ),
        Center(child: Image.asset(AssetData.map))
      ],
    );
  }
}