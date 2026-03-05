import 'package:doc_doc_clean_arch/core/utils/styles.dart';
import 'package:doc_doc_clean_arch/features/profile/domain/entities/profile_user_entity.dart';
import 'package:flutter/material.dart';

class NameEmailAndPhone extends StatelessWidget {
  const NameEmailAndPhone({super.key, required this.profileUserEntity});
  final ProfileUserEntity profileUserEntity;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          profileUserEntity.name??"",
          style: Styles.styleSemiBold18.copyWith(fontSize: 20),
        ),
        SizedBox(height: 8),
        Text(profileUserEntity.email??"", style: Styles.styleRegular14),
        SizedBox(height: 8),
        Text(profileUserEntity.phone??"", style: Styles.styleRegular14),
      ],
    );
  }
}
