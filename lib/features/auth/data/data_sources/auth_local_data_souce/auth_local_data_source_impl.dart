import 'package:doc_doc_clean_arch/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'auth_local_data_source.dart';

class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  final SharedPreferences sharedPreferences;
  AuthLocalDataSourceImpl({required this.sharedPreferences});
  @override
  Future<void> saveToken(String token) async {
    await sharedPreferences.setString(tokenKey, token);
  }
  @override
  Future<String?> getToken() async {
    return sharedPreferences.getString(tokenKey);
  }
  @override
  Future<void> clearToken() async {
    await sharedPreferences.remove(tokenKey);
  }
  @override
Future<void> logout() async {
  await clearToken();
  await sharedPreferences.remove(kIsLoggedIn);
  await sharedPreferences.remove(kUserName);
}
}
