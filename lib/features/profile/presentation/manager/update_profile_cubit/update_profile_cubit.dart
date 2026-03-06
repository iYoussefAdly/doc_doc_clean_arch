import 'package:bloc/bloc.dart';
import 'package:doc_doc_clean_arch/features/profile/domain/use_cases/params/update_profile_param.dart';
import 'package:doc_doc_clean_arch/features/profile/domain/use_cases/update_user_data_use_case.dart';
import 'package:meta/meta.dart';

part 'update_profile_state.dart';

class UpdateProfileCubit extends Cubit<UpdateProfileState> {
  final UpdateUserDataUseCase updateUserDataUseCase;
  UpdateProfileCubit({required this.updateUserDataUseCase})
    : super(UpdateProfileCubitInitial());
  Future<void> updateProfile({required UpdateProfileParam params}) async {
    emit(UpdateProfileLoading());
    final result = await updateUserDataUseCase.call(params);
    result.fold(
      (failure) {
        emit(UpdateProfileFailure(errorMessage: failure.errorMessage));
      },
      (user) {
        emit(UpdateProfileSuccess());
      },
    );
  }
}
