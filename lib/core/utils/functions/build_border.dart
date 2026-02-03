import 'package:flutter/material.dart';

OutlineInputBorder buildBorder({
  required double borderRadius,
  required Color borderColor,
}) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(borderRadius),
    borderSide: BorderSide(color: borderColor.withOpacity(0.5)),
  );
}
