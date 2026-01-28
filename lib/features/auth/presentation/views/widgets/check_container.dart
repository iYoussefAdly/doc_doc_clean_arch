import 'package:doc_doc_clean_arch/constants.dart';
import 'package:flutter/material.dart';

class CheckContainer extends StatefulWidget {
  const CheckContainer({super.key});

  @override
  State<CheckContainer> createState() => _CheckContainerState();
}

class _CheckContainerState extends State<CheckContainer> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isChecked = !isChecked;
        });
      },
      child: Container(
        width: 18,
        height: 18,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          border: Border.all(width: 2.5, color: kBorderAndHintTextColor),
        ),
        child: Center(child: isChecked ? Icon(Icons.check, size: 14) : null),
      ),
    );
  }
}
