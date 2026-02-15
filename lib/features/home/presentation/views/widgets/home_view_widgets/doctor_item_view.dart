import 'package:doc_doc_clean_arch/features/home/domain/entities/doctor_entity.dart';
import 'package:doc_doc_clean_arch/features/home/presentation/views/widgets/home_view_widgets/doctor_item.dart';
import 'package:flutter/material.dart';

class DoctorItemView extends StatelessWidget {
  const DoctorItemView({super.key, required this.doctors});
  final List<DoctorEntity> doctors;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemCount: doctors.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: DoctorItem(doctor: doctors[index],),
        );
      },
    );
  }
}
