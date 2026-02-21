import 'package:doc_doc_clean_arch/features/home/domain/entities/doctor_entity.dart';
import 'package:doc_doc_clean_arch/features/home/presentation/views/widgets/details_view_widgets/custom_about_section_widget.dart';
import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key, required this.doctor});
  final DoctorEntity doctor;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAboutSectionWidget(
          head: 'Adress',
          details:
              "${doctor.addresse}",
        ),
        SizedBox(height: 24),
        CustomAboutSectionWidget(
          head: "Working Time",
          details: "${doctor.workingTime}",
        ),
        SizedBox(height: 24),
        CustomAboutSectionWidget(head: "Email", details: "${doctor.email}"),
        SizedBox(height: 24),
        CustomAboutSectionWidget(
          head: "description",
          details: "${doctor.description}",
        ),
      ],
    );
  }
}
