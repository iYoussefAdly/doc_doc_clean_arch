part of 'get_doctors_cubit.dart';

sealed class GetDoctorsState {}
final class GetDoctorsInitial extends GetDoctorsState {}

final class GetDoctorsSuccess extends GetDoctorsState {
  final List<DoctorEntity> doctors;

  GetDoctorsSuccess({required this.doctors});
}

final class GetDoctorsLoading extends GetDoctorsState {}

final class GetDoctorsFailure extends GetDoctorsState {
  final String errorMessage;

  GetDoctorsFailure({required this.errorMessage});
}
