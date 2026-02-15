import 'package:doc_doc_clean_arch/features/home/presentation/views/widgets/details_view_widgets/custom_about_section_widget.dart';
import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAboutSectionWidget(
          head: 'About me',
          details:
              "Dr. Jenny Watson is the top most Immunologists\nspecialist in Christ Hospital at London. She\nachived several awards for her wonderful\ncontribution in medical field. She is available for\nprivate consultation.",
        ),
        SizedBox(height: 24),
        CustomAboutSectionWidget(
          head: "Working Time",
          details: "Monday - Friday, 08.00 AM - 20.00 PM",
        ),
        SizedBox(height: 24),
        CustomAboutSectionWidget(head: "STR", details: "4726482464"),
        SizedBox(height: 24),
        CustomAboutSectionWidget(
          head: "Pengalaman Praktik",
          details: "2017 - sekarang",
        ),
      ],
    );
  }
}
