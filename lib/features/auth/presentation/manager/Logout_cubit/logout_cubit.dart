import 'package:bloc/bloc.dart';
import 'package:doc_doc_clean_arch/features/auth/domain/use_cases/logout_use_case.dart';
import 'package:meta/meta.dart';

part 'logout_state.dart';

class LogoutCubit extends Cubit<LogoutState> {
  LogoutCubit(this.logoutUseCase) : super(LogoutInitial());
  final LogoutUseCase logoutUseCase;
  Future<void> logout() async {
    final result = await logoutUseCase.call(null);
    result.fold(
      (failure) {
        emit(LogoutFailure(errorMessage: failure.errorMessage));
      },
      (_) {
        emit(LogoutSuccess());
      },
    );
  }
}
