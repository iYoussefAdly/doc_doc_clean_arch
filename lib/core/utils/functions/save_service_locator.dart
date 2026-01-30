import 'package:dio/dio.dart';
import 'package:doc_doc_clean_arch/core/utils/api_services.dart';
import 'package:doc_doc_clean_arch/features/auth/data/data_sources/auth_local_data_souce/auth_local_data_source.dart';
import 'package:doc_doc_clean_arch/features/auth/data/data_sources/auth_local_data_souce/auth_local_data_source_impl.dart';
import 'package:doc_doc_clean_arch/features/auth/data/data_sources/auth_remote_data_source/auth_remote_data_source.dart';
import 'package:doc_doc_clean_arch/features/auth/data/data_sources/auth_remote_data_source/auth_remote_data_source_impl.dart';
import 'package:doc_doc_clean_arch/features/auth/data/repos/auth_repo_impl.dart';
import 'package:doc_doc_clean_arch/features/auth/domain/repos/auth_repo.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> saveServiceLocator() async {
  // Dio / ApiServices
  getIt.registerSingleton<Dio>(Dio());
  getIt.registerSingleton<ApiServices>(ApiServices(dio: getIt<Dio>()));
  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerSingleton<SharedPreferences>(sharedPreferences);

  getIt.registerSingleton<AuthLocalDataSource>(
    AuthLocalDataSourceImpl(sharedPreferences: getIt<SharedPreferences>()),
  );

  // Remote Data Source
  getIt.registerSingleton<AuthRemoteDataSource>(
    AuthRemoteDataSourceImpl(
      apiServices: getIt<ApiServices>(),
      localDataSource: getIt<AuthLocalDataSource>(),
    ),
  );

  // Repository
  getIt.registerSingleton<AuthRepo>(
    AuthRepoImpl(
      remoteDataSource: getIt<AuthRemoteDataSource>(),
      localDataSource: getIt<AuthLocalDataSource>(),
    ),
  );
}
