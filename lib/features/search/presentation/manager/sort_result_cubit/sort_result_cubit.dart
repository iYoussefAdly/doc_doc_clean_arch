import 'package:bloc/bloc.dart';
import 'package:doc_doc_clean_arch/features/home/domain/entities/doctor_entity.dart';
import 'package:doc_doc_clean_arch/features/search/domain/use_cases/params/sort_param.dart';
import 'package:doc_doc_clean_arch/features/search/domain/use_cases/sort_use_case.dart';
import 'package:meta/meta.dart';
part 'sort_result_state.dart';
class SortResultCubit extends Cubit<SortResultState> {
  SortResultCubit(this.sortUseCase) : super(SortResultInitial());
  final SortUseCase sortUseCase;
  Future<void> sortDoctors({required SortParam param}) async {
    emit(SortResultLoading());
    final result = await sortUseCase.call(param);
    result.fold(
      (failure) {
        emit(SortResultFailure(errorMessge: failure.errorMessage));
      },
      (doctors) {
        emit(SortResultSuccess(doctors: doctors));
      },
    );
  }
}
