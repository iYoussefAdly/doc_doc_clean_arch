import 'package:doc_doc_clean_arch/features/home/presentation/views/widgets/details_view_widgets/review_details.dart';
import 'package:doc_doc_clean_arch/features/home/presentation/views/widgets/details_view_widgets/review_image.dart';
import 'package:flutter/material.dart';
class ReviewItem extends StatelessWidget {
  const ReviewItem({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ReviewImage(),
        SizedBox(width: 10),
        ReviewDetails(),
      ],
    );
  }
}


