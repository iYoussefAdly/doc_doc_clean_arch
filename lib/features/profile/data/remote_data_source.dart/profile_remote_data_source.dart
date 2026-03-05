import 'package:doc_doc_clean_arch/features/profile/domain/entities/profile_user_entity.dart';
abstract class ProfileRemoteDataSource {
  Future<ProfileUserEntity> getUserData();
}
