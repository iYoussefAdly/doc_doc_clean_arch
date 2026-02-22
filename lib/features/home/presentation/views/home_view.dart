import 'package:doc_doc_clean_arch/core/utils/functions/setub_service_locator.dart';
import 'package:doc_doc_clean_arch/core/widgets/main_bottom_nav_bar.dart';
import 'package:doc_doc_clean_arch/features/home/domain/repos/home_repo.dart';
import 'package:doc_doc_clean_arch/features/home/domain/use_cases/get_doctors_use_case.dart';
import 'package:doc_doc_clean_arch/features/home/presentation/manager/get_doctors_cubit/get_doctors_cubit.dart';
import 'package:doc_doc_clean_arch/features/home/presentation/views/widgets/home_view_widgets/home_view_body.dart';
import 'package:doc_doc_clean_arch/features/profile/presentation/views/widgets/profile_view_body.dart';
import 'package:doc_doc_clean_arch/features/search/presentation/views/widgets/search_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key, required this.name});
  final String name;
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int selectedIndex = 0;
  late final List<Widget> pages;
  @override
  void initState() {
    super.initState();
    pages = [
      HomeViewBody(name: widget.name),
      SearchViewBody(
        onBackPressed: () {
          setState(() {
            selectedIndex = 0;
          });
        },
      ),
      const ProfileViewBody(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          GetDoctorsCubit(GetDoctorsUseCase(homeRepo: getIt<HomeRepo>()))
            ..getDoctors(),
      child: Scaffold(
        body: IndexedStack(index: selectedIndex, children: pages),
        bottomNavigationBar: MainBottomNavBar(
          currentIndex: selectedIndex,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
