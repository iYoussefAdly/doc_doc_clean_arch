import 'package:bloc/bloc.dart';
import 'package:doc_doc_clean_arch/features/home/domain/entities/doctor_entity.dart';
import 'package:doc_doc_clean_arch/features/search/domain/use_cases/params/search_param.dart';
import 'package:doc_doc_clean_arch/features/search/domain/use_cases/search_use_case.dart';
import 'package:meta/meta.dart';
part 'search_result_state.dart';

class SearchResultCubit extends Cubit<SearchResultState> {
  SearchResultCubit({required this.searchUseCase})
    : super(SearchResultInitial());
  final SearchUseCase searchUseCase;
  Future<void> getDoctorResult({required SearchParam param}) async {
    emit(SearchResultLoading());
    final result = await searchUseCase.call(param);
    result.fold(
      (failure) =>
          emit(SearchResultFailure(errorMessage: failure.errorMessage)),
      (success) => emit(SearchResultSuccess(doctorResult: success)),
    );
  }
}
