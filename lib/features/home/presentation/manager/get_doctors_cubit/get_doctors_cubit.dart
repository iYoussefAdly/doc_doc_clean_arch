import 'package:bloc/bloc.dart';
import 'package:doc_doc_clean_arch/features/home/domain/entities/doctor_entity.dart'
    show DoctorEntity;
import 'package:doc_doc_clean_arch/features/home/domain/use_cases/get_doctors_use_case.dart';
part 'get_doctors_state.dart';
class GetDoctorsCubit extends Cubit<GetDoctorsState> {
  GetDoctorsCubit(this.getDoctorsUseCase) : super(GetDoctorsInitial());
  final GetDoctorsUseCase getDoctorsUseCase;
  Future<void> getDoctors() async {
    emit(GetDoctorsLoading());
    var result = await getDoctorsUseCase.call(NoParam());
    result.fold(
      (failre) {
        emit(GetDoctorsFailure(errorMessage: failre.errorMessage));
      },
      (doctors) {
        emit(GetDoctorsSuccess(doctors: doctors));
      },
    );
  }
}
