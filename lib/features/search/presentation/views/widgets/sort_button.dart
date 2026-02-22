import 'package:doc_doc_clean_arch/core/utils/asset_data.dart';
import 'package:flutter/material.dart';

class SortButton extends StatelessWidget {
  const SortButton({super.key, required this.onTap});
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap,
      child: Container(
        height: 24,
        width: 24,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AssetData.sortImage),
          ),
        ),
      ),
    );
  }
}
