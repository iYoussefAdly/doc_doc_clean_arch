import 'package:doc_doc_clean_arch/core/use_case/use_case.dart';
import 'package:doc_doc_clean_arch/features/auth/domain/repos/auth_repo.dart';

class LogoutUseCase extends UseCase<void, void> {
  final AuthRepo authRepo;
  LogoutUseCase({required this.authRepo});
  @override
  Future<void> call(void params){
   return authRepo.logout();
  }
}
