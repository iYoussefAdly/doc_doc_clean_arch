import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:doc_doc_clean_arch/core/errors/failure.dart';
import 'package:doc_doc_clean_arch/core/use_case/use_case.dart';
import 'package:doc_doc_clean_arch/features/auth/domain/repos/auth_repo.dart';

class LogoutUseCase extends UseCase<void, void> {
  final AuthRepo authRepo;
  LogoutUseCase({required this.authRepo});
  @override
  Future<Either<Failure, void>> call(void params) async {
    try {
      await authRepo.logout();
      return const Right(null);
    } on DioException catch (e) {
      return Left(ServerFailure.formDioException(e));
    } catch (e) {
      return Left(ServerFailure(errorMessage: e.toString()));
    }
  }
}
