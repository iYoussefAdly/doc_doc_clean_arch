import 'package:doc_doc_clean_arch/features/home/presentation/models%20for%20UI/review_item_model.dart';
import 'package:doc_doc_clean_arch/features/home/presentation/views/widgets/details_view_widgets/review_details.dart';
import 'package:doc_doc_clean_arch/features/home/presentation/views/widgets/details_view_widgets/review_image.dart';
import 'package:flutter/material.dart';

class ReviewItem extends StatelessWidget {
  const ReviewItem({super.key, required this.reviewItemModel});
  final ReviewItemModel reviewItemModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [ReviewImage(image: reviewItemModel.image,), SizedBox(width: 10), ReviewDetails(name: reviewItemModel.name,comment:reviewItemModel.comment,)],
    );
  }
}
