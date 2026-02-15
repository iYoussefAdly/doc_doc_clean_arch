import 'package:doc_doc_clean_arch/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> saveUserName({required String name}) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString(kUserName, name);
}
Future<String?> getUserName() async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getString(kUserName);
}
