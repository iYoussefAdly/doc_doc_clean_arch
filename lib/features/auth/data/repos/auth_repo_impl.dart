import '../../domain/entities/user_entity.dart';
import '../../domain/repos/auth_repo.dart';
import '../data_sources/auth_local_data_souce/auth_local_data_source.dart';
import '../data_sources/auth_remote_data_source/auth_remote_data_source.dart';
import '../models/user_model.dart';
import '../../domain/use_cases/params/login_params.dart';
import '../../domain/use_cases/params/register_params.dart';

class AuthRepoImpl implements AuthRepo {
  final AuthRemoteDataSource remoteDataSource;
  final AuthLocalDataSource localDataSource;
  AuthRepoImpl({required this.remoteDataSource, required this.localDataSource});
  @override
  Future<UserEntity> login(LoginParams params) async {
    final UserModel userModel = await remoteDataSource.login(params);
    return _mapToEntity(userModel);
  }

  @override
  Future<UserEntity> register(RegisterParams params) async {
    final UserModel userModel = await remoteDataSource.register(params);
    return _mapToEntity(userModel);
  }
  @override
  Future<void> logout() async {
    try {
      await remoteDataSource.logOut();
    } catch (e) {
      // Even if remote logout fails, clear local data to ensure user can logout
      // This handles cases where server is unreachable or returns an error
    } finally {
      // Always clear local data regardless of remote call success/failure
      await localDataSource.logout();
    }
  }
}
  UserEntity _mapToEntity(UserModel model) {
    return UserEntity(
      name: model.name,
      email: model.email,
      phone: model.phone,
      gender: model.gender,
    );
  }
