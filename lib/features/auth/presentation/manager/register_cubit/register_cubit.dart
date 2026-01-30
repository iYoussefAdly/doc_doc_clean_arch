import 'package:bloc/bloc.dart';
import 'package:doc_doc_clean_arch/features/auth/domain/entities/user_entity.dart';
import 'package:doc_doc_clean_arch/features/auth/domain/use_cases/params/register_params.dart';
import 'package:doc_doc_clean_arch/features/auth/domain/use_cases/register_use_case.dart';
import 'package:meta/meta.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(this.registerUseCase) : super(RegisterInitial());
  final RegisterUseCase registerUseCase;
  Future<void> register(RegisterParams params) async {
    emit(RegisterLoading());
    try {
    UserEntity user=  await registerUseCase.call(params);
      emit(RegisterSuccess(user:user));
    } catch (e) {
      emit(RegisterFailure(errorMessage: e.toString()));
    }
  }
}
