import 'package:bloc/bloc.dart';
import 'package:doc_doc_clean_arch/core/utils/functions/save_and_get_user_name.dart';
import 'package:doc_doc_clean_arch/features/home/domain/use_cases/get_doctors_use_case.dart';
import 'package:doc_doc_clean_arch/features/profile/domain/entities/profile_user_entity.dart';
import 'package:doc_doc_clean_arch/features/profile/domain/use_cases/get_user_data_use_case.dart';
import 'package:meta/meta.dart';

part 'get_user_data_state.dart';

class GetUserDataCubit extends Cubit<GetUserDataState> {
  GetUserDataCubit(this.getUserDataUseCase) : super(GetUserDataInitial());
  final GetUserDataUseCase getUserDataUseCase;
  Future<void> getUserData() async {
    emit(GetUserDataLoading());
    final result = await getUserDataUseCase.call(NoParam());
    result.fold(
      (failure) {
        emit(GetUserDataFailure(errorMessage: failure.errorMessage));
      },
      (user) {
        emit(GetUserDataSuccess(user: user));
        saveUserName(name: user.name!);
      },
    );
  }
}
