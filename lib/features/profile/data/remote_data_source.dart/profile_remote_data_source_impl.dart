import 'package:doc_doc_clean_arch/constants.dart';
import 'package:doc_doc_clean_arch/core/utils/api_services.dart';
import 'package:doc_doc_clean_arch/core/utils/functions/get_user_token.dart';
import 'package:doc_doc_clean_arch/features/profile/data/models/profile_user_model.dart';
import 'package:doc_doc_clean_arch/features/profile/data/remote_data_source.dart/profile_remote_data_source.dart';
import 'package:doc_doc_clean_arch/features/profile/domain/entities/profile_user_entity.dart';
class ProfileRemoteDataSourceImpl extends ProfileRemoteDataSource {
  final ApiServices apiServices;
  ProfileRemoteDataSourceImpl({required this.apiServices});
  @override
  Future<ProfileUserEntity> getUserData() async {
    final token = await getUserToken();
    final response = await apiServices.get(
      endPoint: kGetUserDataEndPoint,
      token: token,
    );
    final json = response["data"][0];
    final userModel = ProfileUserModel.fromJson(json);
    return userModel;
  }
}
