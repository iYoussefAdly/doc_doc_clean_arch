import 'package:doc_doc_clean_arch/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

abstract class Styles {
  static const styleBold32 = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: kTextPrimaryColor,
  );
  static const styleRegular10 = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    color: kTextSecondaryColor,
  );
  static const styleSemiBold16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Colors.white
  );
}
