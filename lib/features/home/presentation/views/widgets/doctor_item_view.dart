import 'package:doc_doc_clean_arch/features/home/presentation/views/widgets/doctor_item.dart';
import 'package:flutter/material.dart';

class DoctorItemView extends StatelessWidget {
  const DoctorItemView({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: DoctorItem(),
        );
      }
    );
  }
}