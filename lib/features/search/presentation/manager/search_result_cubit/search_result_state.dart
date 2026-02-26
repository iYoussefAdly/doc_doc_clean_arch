part of 'search_result_cubit.dart';

@immutable
sealed class SearchResultState {}

final class SearchResultInitial extends SearchResultState {
  final String message = "Enter a doctor name to see matching results.";
}

final class SearchResultSuccess extends SearchResultState {
  final List<DoctorEntity> doctorResult;
  SearchResultSuccess({required this.doctorResult});
}

final class SearchResultFailure extends SearchResultState {
  final String errorMessage;
  SearchResultFailure({required this.errorMessage});
}
final class SearchResultLoading extends SearchResultState{}
