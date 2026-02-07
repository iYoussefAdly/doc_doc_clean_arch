import 'package:doc_doc_clean_arch/core/utils/functions/setub_service_locator.dart';
import 'package:doc_doc_clean_arch/features/home/domain/repos/home_repo.dart';
import 'package:doc_doc_clean_arch/features/home/domain/use_cases/get_doctors_use_case.dart';
import 'package:doc_doc_clean_arch/features/home/presentation/manager/get_doctors_cubit/get_doctors_cubit.dart';
import 'package:doc_doc_clean_arch/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetDoctorsCubit(GetDoctorsUseCase(homeRepo: getIt<HomeRepo>()))..getDoctors(),
      child: Scaffold(body: HomeViewBody(name: name)),
    );
  }
}
