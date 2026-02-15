import 'package:doc_doc_clean_arch/features/home/presentation/manager/get_doctors_cubit/get_doctors_cubit.dart';
import 'package:doc_doc_clean_arch/features/home/presentation/views/widgets/home_view_widgets/doctor_item_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorItemViewBuilder extends StatelessWidget {
  const DoctorItemViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetDoctorsCubit, GetDoctorsState>(
      builder: (context, state) {
        if (state is GetDoctorsSuccess) {
          return DoctorItemView(doctors: state.doctors);
        } else if (state is GetDoctorsFailure) {
          return Center(child: Text(state.errorMessage));
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
