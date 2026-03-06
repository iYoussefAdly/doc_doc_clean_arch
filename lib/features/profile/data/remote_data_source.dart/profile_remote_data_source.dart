import 'package:doc_doc_clean_arch/features/profile/domain/entities/profile_user_entity.dart';
import 'package:doc_doc_clean_arch/features/profile/domain/use_cases/params/update_profile_param.dart';
abstract class ProfileRemoteDataSource {
  Future<ProfileUserEntity> getUserData();
  Future<ProfileUserEntity> updateProfile(UpdateProfileParam params);
}
