import 'package:doc_doc_clean_arch/constants.dart';
import 'package:doc_doc_clean_arch/core/utils/functions/build_border.dart';
import 'package:doc_doc_clean_arch/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CityIdTextField extends StatelessWidget {
  const CityIdTextField({super.key, required this.cityIdController, this.onSubmitted});
  final TextEditingController cityIdController;
  final void Function(String)? onSubmitted;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted:onSubmitted,
      controller: cityIdController,
      decoration: InputDecoration(
        fillColor: Color(0xffF2F2F2),
        filled: true,
        focusedBorder: buildBorder(
          borderRadius: 15,
          borderColor: kTextPrimaryColor,
        ),
        enabledBorder: buildBorder(
          borderRadius: 15,
          borderColor: Color(0xffBCBCBC),
        ),
        prefixIcon: Icon(Icons.sort, color: Color(0xffBCBCBC), size: 34),
        hintText: "Enter city ID",
        hintStyle: Styles.styleMedium12,
      ),
    );
  }
}
