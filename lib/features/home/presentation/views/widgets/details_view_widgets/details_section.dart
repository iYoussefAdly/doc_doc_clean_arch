import 'package:doc_doc_clean_arch/core/widgets/custom_button_widget.dart';
import 'package:doc_doc_clean_arch/features/home/domain/entities/doctor_entity.dart';
import 'package:doc_doc_clean_arch/features/home/presentation/views/widgets/details_view_widgets/about_section.dart';
import 'package:doc_doc_clean_arch/features/home/presentation/views/widgets/details_view_widgets/location_section.dart';
import 'package:doc_doc_clean_arch/features/home/presentation/views/widgets/details_view_widgets/review_section.dart';
import 'package:doc_doc_clean_arch/features/home/presentation/views/widgets/details_view_widgets/tabs_row.dart';
import 'package:doc_doc_clean_arch/features/home/presentation/views/widgets/home_view_widgets/doctor_item.dart';
import 'package:flutter/material.dart';

class DetailsSection extends StatefulWidget {
  const DetailsSection({super.key});
  @override
  State<DetailsSection> createState() => _DetailsSectionState();
}

class _DetailsSectionState extends State<DetailsSection> {
  int selectedIndex = 0;
  Widget _buildBody() {
    final sections = [
      const AboutSection(),
      const LocationSection(),
      const ReviewSection(),
    ];
    return sections[selectedIndex];
  }

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      hasScrollBody: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DoctorItem(
              doctor: DoctorEntity(
                id: 2,
                name: "Youssef",
                specialty: 'General',
                degree: "RSUD Gatot Subroto",
                imageUrl: null,
              ),
            ),
            const SizedBox(height: 24),
            TabsRow(
              selectedIndex: selectedIndex,
              onAboutTap: () {
                setState(() {
                  selectedIndex = 0;
                });
              },
              onLocationTap: () {
                setState(() {
                  selectedIndex = 1;
                });
              },
              onReviewTap: () {
                setState(() {
                  selectedIndex = 2;
                });
              },
            ),
            const SizedBox(height: 32),
            Expanded(
              child: _buildBody(),
            ),
            const SizedBox(height: 24),
            CustomButtonWidget(
              buttonName: "Make An Appointment",
              onTap: () {},
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
