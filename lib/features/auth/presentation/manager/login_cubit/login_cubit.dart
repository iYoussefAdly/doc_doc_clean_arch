import 'package:bloc/bloc.dart';
import 'package:doc_doc_clean_arch/core/utils/functions/checkUserLoggedIn.dart';
import 'package:doc_doc_clean_arch/core/utils/functions/save_and_get_user_name.dart';
import 'package:doc_doc_clean_arch/features/auth/domain/entities/user_entity.dart';
import 'package:doc_doc_clean_arch/features/auth/domain/use_cases/login_use_case.dart';
import 'package:doc_doc_clean_arch/features/auth/domain/use_cases/params/login_params.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.loginUseCase) : super(LoginInitial());
  final LoginUseCase loginUseCase;
  Future<void> login(LoginParams params) async {
    emit(LoginLoading());
    final result = await loginUseCase.call(params);
    result.fold(
      (failure) {
        emit(LoginFailure(errorMessage: failure.errorMessage));
      },
      (user) {
        emit(LoginSuccess(user: user));
        checkUserisLoggedIn(true);
        saveUserName(name: user.name!);
      },
    );
  }
}
