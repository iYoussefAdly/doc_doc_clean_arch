import 'package:doc_doc_clean_arch/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> checkUserisLoggedIn(bool value) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setBool(kIsLoggedIn, value);
}

Future<bool> getUserIsLoggedIn() async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getBool(kIsLoggedIn) ?? false;
}
