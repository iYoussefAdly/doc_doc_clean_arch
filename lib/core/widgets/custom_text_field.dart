import 'package:doc_doc_clean_arch/constants.dart';
import 'package:doc_doc_clean_arch/core/utils/functions/build_border.dart';
import 'package:doc_doc_clean_arch/core/utils/styles.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatefulWidget {
  CustomTextField({
    super.key,
    required this.hintText,
    required this.controller,
    this.isItPassword = false,
    this.isObscured = false,
  });
  final String hintText;
  final TextEditingController? controller;
  final bool isItPassword;
  bool isObscured;
  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.isObscured,
      controller: widget.controller,
      decoration: InputDecoration(
        enabledBorder: buildBorder(
          borderRadius: 12,
          borderColor: kBorderAndHintTextColor,
        ),
        focusedBorder: buildBorder(
          borderRadius: 12,
          borderColor: kTextPrimaryColor,
        ),
        fillColor: Color(0xffF5F5F7),
        filled: true,
        suffixIcon: widget.isItPassword
            ? IconButton(
                onPressed: () {
                  setState(() {
                    widget.isObscured = !widget.isObscured;
                  });
                },
                icon: Icon(
                  widget.isObscured ? Icons.visibility_off : Icons.visibility,
                ),
              )
            : null,
        contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        hintText: widget.hintText,
        hintStyle: Styles.styleMedium14,
      ),
    );
  }
}
