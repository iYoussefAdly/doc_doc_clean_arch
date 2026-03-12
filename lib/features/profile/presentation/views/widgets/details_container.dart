import 'package:doc_doc_clean_arch/features/profile/presentation/views/widgets/user_details.dart';
import 'package:flutter/material.dart';

class DetailsContainer extends StatelessWidget {
  const DetailsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(16, 32, 16, 16),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: const UserDetails(),
    );
  }
}
