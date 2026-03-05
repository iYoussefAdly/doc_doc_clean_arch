part of 'get_user_data_cubit.dart';

@immutable
sealed class GetUserDataState {}

final class GetUserDataInitial extends GetUserDataState {}

final class GetUserDataSuccess extends GetUserDataState {
  final ProfileUserEntity user;
  GetUserDataSuccess({required this.user});
}

final class GetUserDataFailure extends GetUserDataState {
  final String errorMessage;

  GetUserDataFailure({required this.errorMessage});
}

final class GetUserDataLoading extends GetUserDataState {}
