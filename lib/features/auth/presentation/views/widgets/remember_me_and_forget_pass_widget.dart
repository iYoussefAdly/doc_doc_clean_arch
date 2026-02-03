import 'package:doc_doc_clean_arch/constants.dart';
import 'package:doc_doc_clean_arch/core/utils/styles.dart';
import 'package:doc_doc_clean_arch/features/auth/presentation/views/widgets/check_container.dart';
import 'package:flutter/material.dart';

class RememberMeAndForgetPassWidget extends StatelessWidget {
  const RememberMeAndForgetPassWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CheckContainer(),
        SizedBox(width: 6),
        Text("Remeber me", style: Styles.styleRegular12),
        Spacer(),
        Text(
          "Forget password",
          style: Styles.styleRegular12.copyWith(color: kTextPrimaryColor),
        ),
      ],
    );
  }
}
