part of 'sort_result_cubit.dart';

@immutable
sealed class SortResultState {}

final class SortResultInitial extends SortResultState {}

final class SortResultFailure extends SortResultState {
  final String errorMessge;
  SortResultFailure({required this.errorMessge});
}

final class SortResultSuccess extends SortResultState {
  final List<DoctorEntity> doctors;
  SortResultSuccess({required this.doctors});
}

final class SortResultLoading extends SortResultState {}
