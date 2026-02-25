import 'package:doc_doc_clean_arch/features/search/domain/use_cases/params/search_param.dart';
import 'package:doc_doc_clean_arch/features/search/presentation/manager/search_result_cubit/search_result_cubit.dart';
import 'package:doc_doc_clean_arch/features/search/presentation/views/widgets/search_text_field.dart';
import 'package:doc_doc_clean_arch/features/search/presentation/views/widgets/sort_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});
  static final TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SearchTextField(
            searchController: nameController,
            onSubmitted: () {
              BlocProvider.of<SearchResultCubit>(context).getDoctorResult(
                param: SearchParam(name: nameController.text.trim()),
              );
            },
          ),
        ),
        SizedBox(width: 12),
        SortButton(onTap: () {}),
      ],
    );
  }
}
