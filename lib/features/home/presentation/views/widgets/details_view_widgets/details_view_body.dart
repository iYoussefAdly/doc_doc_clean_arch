import 'package:doc_doc_clean_arch/features/home/presentation/views/widgets/details_view_widgets/app_bar_section.dart';
import 'package:doc_doc_clean_arch/features/home/presentation/views/widgets/details_view_widgets/details_section.dart';
import 'package:flutter/material.dart';
class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 23),
            child: AppBarSection(),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(height: 32),
        ),
        DetailsSection(),
      ],
    );
  }
}
