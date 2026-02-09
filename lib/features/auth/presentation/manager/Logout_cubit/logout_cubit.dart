import 'package:bloc/bloc.dart';
import 'package:doc_doc_clean_arch/features/auth/domain/use_cases/logout_use_case.dart';
import 'package:doc_doc_clean_arch/features/home/domain/use_cases/get_doctors_use_case.dart';
import 'package:meta/meta.dart';

part 'logout_state.dart';

class LogoutCubit extends Cubit<LogoutState> {
  LogoutCubit(this.logoutUseCase) : super(LogoutInitial());
  final LogoutUseCase logoutUseCase;
  Future<void> logout() async {
    try {
      await logoutUseCase.call(NoParam());
      emit(LogoutSuccess());
    } catch (e) {
      emit(LogoutFailure(errorMessage: e.toString()));
    }
  }
}
