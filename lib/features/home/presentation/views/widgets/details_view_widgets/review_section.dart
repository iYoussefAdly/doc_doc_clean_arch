import 'package:doc_doc_clean_arch/features/home/presentation/views/widgets/details_view_widgets/review_item.dart';
import 'package:flutter/material.dart';

class ReviewSection extends StatelessWidget {
  const ReviewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(3, (index)=>Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: ReviewItem(),
      )),
    );
  }
}
