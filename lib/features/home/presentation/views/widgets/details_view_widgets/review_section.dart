import 'package:doc_doc_clean_arch/core/utils/asset_data.dart';
import 'package:doc_doc_clean_arch/features/home/presentation/models%20for%20UI/review_item_model.dart';
import 'package:doc_doc_clean_arch/features/home/presentation/views/widgets/details_view_widgets/review_item.dart';
import 'package:flutter/material.dart';

class ReviewSection extends StatelessWidget {
  const ReviewSection({super.key});
  static final List<ReviewItemModel> reviews = [
    ReviewItemModel(
      name: "Jane Cooper",
      comment:
          "As someone who lives in a remote area with limited access to healthcare, this telemedicine app has been a game changer for me. I can easily schedule virtual appointments with doctors and get the care I need without having to travel long distances.",
      image: AssetData.janeImage,
    ),
    ReviewItemModel(
      name: "Robert Fox",
      comment:
          "I was initially skeptical about using a telemedicine app but this app has exceeded my expectations. The doctors are highly qualified and provide excellent care.",
      image: AssetData.robertImage,
    ),
    ReviewItemModel(
      name: "Jacob Jones",
      comment:
          "Living far from hospitals used to make getting medical help really difficult, but this telemedicine app has completely changed that. I can now consult with doctors online and get timely care without the hassle of traveling hours to see them.",
      image: AssetData.jacobImage,
    ),
    ReviewItemModel(
      name: "Sarah M",
      comment:
          "This app has made healthcare so accessible for me. I can have consultations with doctors from home, which saves me so much time and stress",
      image: null,
    ),
    ReviewItemModel(
      name: "Ahmed R",
      comment:
          "Living in a remote area, I struggled to see a doctor regularly. Thanks to this telemedicine app, I can get medical advice quickly without long trips",
      image: null,
    ),
    ReviewItemModel(
      name: "Lina K",
      comment:
          "I love how easy it is to book virtual appointments. I finally feel like I have reliable healthcare, even though I live far from the city.",
      image: null,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        reviews.length,
        (index) => Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: ReviewItem(reviewItemModel: reviews[index]),
        ),
      ),
    );
  }
}
