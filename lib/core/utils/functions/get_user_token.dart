import 'package:doc_doc_clean_arch/core/utils/functions/setub_service_locator.dart';
import 'package:doc_doc_clean_arch/features/auth/data/data_sources/auth_local_data_souce/auth_local_data_source.dart';

Future<String?> getUserToken() async {
  return getIt<AuthLocalDataSource>().getToken();
}

