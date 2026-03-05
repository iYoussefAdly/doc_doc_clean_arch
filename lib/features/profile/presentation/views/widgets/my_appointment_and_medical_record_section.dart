import 'package:doc_doc_clean_arch/constants.dart';
import 'package:doc_doc_clean_arch/core/utils/styles.dart';
import 'package:flutter/material.dart';

class MyAppointmentAndMedicalRecordSection extends StatelessWidget {
  const MyAppointmentAndMedicalRecordSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: const Color(0xffEFEFEF),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Expanded(
            child: Center(
              child: Text(
                "My Appointment",
                style: Styles.styleRegular12.copyWith(color: Colors.black),
              ),
            ),
          ),
          SizedBox(width: 10),
          Container(height: 42, width: 1.5, color: kBorderAndHintTextColor),
          SizedBox(width: 10),
          Expanded(
            child: Center(
              child: Text(
                "Medical records",
                style: Styles.styleRegular12.copyWith(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
