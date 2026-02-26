import 'package:doc_doc_clean_arch/constants.dart';
import 'package:doc_doc_clean_arch/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SortBottomSheetHeader extends StatelessWidget {
  const SortBottomSheetHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(thickness: 4, indent: 158, endIndent: 158,color: kBorderColor,),
        SizedBox(
          height: 33,
        ),
        Text("Sort By",style: Styles.styleSemiBold18,),
        SizedBox(
          height: 16,
        ),
        Divider(thickness: 2,endIndent:24,color: kBorderColor,),
      ],
    );
  }
}