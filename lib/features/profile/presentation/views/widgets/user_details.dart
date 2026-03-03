import 'package:doc_doc_clean_arch/features/profile/presentation/views/widgets/custom_profile_item.dart';
import 'package:doc_doc_clean_arch/features/profile/presentation/views/widgets/my_appointment_and_medical_record_section.dart';
import 'package:doc_doc_clean_arch/features/profile/presentation/views/widgets/name_email_and_phone.dart';
import 'package:doc_doc_clean_arch/features/profile/presentation/views/widgets/profile_items_view.dart';
import 'package:flutter/material.dart';
class UserDetails extends StatelessWidget {
  const UserDetails({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, bottom: 30),
      child: Column(
        children: [
          SizedBox(height: 100),
          NameEmailAndPhone(),
          SizedBox(
            height: 24,
          ),
          MyAppointmentAndMedicalRecordSection(),
          SizedBox(
            height: 24,
          ),
          ProfileItemsView()
        ],
      ),
    );
  }
}


