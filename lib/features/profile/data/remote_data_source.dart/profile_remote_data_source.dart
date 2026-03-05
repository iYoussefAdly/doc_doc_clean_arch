import 'package:doc_doc_clean_arch/features/profile/data/models/profile_user_model.dart';
abstract class ProfileRemoteDataSource {
  Future<ProfileUserModel> getUserData();
}
