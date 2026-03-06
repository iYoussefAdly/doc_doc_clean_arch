import 'package:dio/dio.dart';
import 'package:doc_doc_clean_arch/core/utils/api_services.dart';
import 'package:doc_doc_clean_arch/features/auth/data/data_sources/auth_local_data_souce/auth_local_data_source.dart';
import 'package:doc_doc_clean_arch/features/auth/data/data_sources/auth_local_data_souce/auth_local_data_source_impl.dart';
import 'package:doc_doc_clean_arch/features/auth/data/data_sources/auth_remote_data_source/auth_remote_data_source.dart';
import 'package:doc_doc_clean_arch/features/auth/data/data_sources/auth_remote_data_source/auth_remote_data_source_impl.dart';
import 'package:doc_doc_clean_arch/features/auth/data/repos/auth_repo_impl.dart';
import 'package:doc_doc_clean_arch/features/auth/domain/repos/auth_repo.dart';
import 'package:doc_doc_clean_arch/features/home/data/data_sources/home_local_data_source/home_local_data_source.dart';
import 'package:doc_doc_clean_arch/features/home/data/data_sources/home_local_data_source/home_local_data_source_impl.dart';
import 'package:doc_doc_clean_arch/features/home/data/data_sources/home_remote_data_source/home_remote_data_source.dart';
import 'package:doc_doc_clean_arch/features/home/data/data_sources/home_remote_data_source/home_remote_data_source_impl.dart';
import 'package:doc_doc_clean_arch/features/home/data/repos/home_repo_impl.dart';
import 'package:doc_doc_clean_arch/features/home/domain/repos/home_repo.dart';
import 'package:doc_doc_clean_arch/features/profile/data/remote_data_source.dart/profile_remote_data_source.dart';
import 'package:doc_doc_clean_arch/features/profile/data/remote_data_source.dart/profile_remote_data_source_impl.dart';
import 'package:doc_doc_clean_arch/features/profile/data/repos/profile_repo_impl.dart';
import 'package:doc_doc_clean_arch/features/profile/domain/repos/profile_repo.dart';
import 'package:doc_doc_clean_arch/features/profile/domain/use_cases/get_user_data_use_case.dart';
import 'package:doc_doc_clean_arch/features/profile/presentation/manager/get_user_data_cubit/get_user_data_cubit.dart';
import 'package:doc_doc_clean_arch/features/search/data/data_sources/search_data_sources/search_remote_data_source.dart';
import 'package:doc_doc_clean_arch/features/search/data/data_sources/search_data_sources/search_remote_data_source_impl.dart';
import 'package:doc_doc_clean_arch/features/search/data/data_sources/sort_data_sources/sort_remote_data_source.dart';
import 'package:doc_doc_clean_arch/features/search/data/data_sources/sort_data_sources/sort_remote_data_source_impl.dart';
import 'package:doc_doc_clean_arch/features/search/data/repos/search_repo_impl.dart';
import 'package:doc_doc_clean_arch/features/search/domain/repos/search_repo.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
Future<void> initServiceLocator() async {
  await registerCommon();
  registerAuthFeature();
  registerHomeFeature();
  searchFeature();
  profileFeature();
}

Future<void> registerCommon() async {
  getIt.registerSingleton<Dio>(Dio());
  getIt.registerSingleton<ApiServices>(ApiServices(dio: getIt<Dio>()));
  final prefs = await SharedPreferences.getInstance();
  getIt.registerSingleton<SharedPreferences>(prefs);
}

void registerAuthFeature() {
  getIt.registerSingleton<AuthLocalDataSource>(
    AuthLocalDataSourceImpl(sharedPreferences: getIt<SharedPreferences>()),
  );

  getIt.registerSingleton<AuthRemoteDataSource>(
    AuthRemoteDataSourceImpl(
      apiServices: getIt<ApiServices>(),
      localDataSource: getIt<AuthLocalDataSource>(),
    ),
  );

  getIt.registerSingleton<AuthRepo>(
    AuthRepoImpl(
      remoteDataSource: getIt<AuthRemoteDataSource>(),
      localDataSource: getIt<AuthLocalDataSource>(),
    ),
  );
}

void registerHomeFeature() {
  getIt.registerSingleton<HomeLocalDataSource>(
    HomeLocalDataSourceImpl(prefs: getIt<SharedPreferences>()),
  );

  getIt.registerSingleton<HomeRemoteDataSource>(
    HomeRemoteDataSourceImpl(
      getIt<AuthLocalDataSource>(),
      apiServices: getIt<ApiServices>(),
    ),
  );

  getIt.registerSingleton<HomeRepo>(
    HomeRepoImpl(
      homeLocalDataSource: getIt<HomeLocalDataSource>(),
      homeRemoteDataSource: getIt<HomeRemoteDataSource>(),
    ),
  );
}

void searchFeature() {
  getIt.registerSingleton<SearchRemoteDataSource>(
    SearchRemoteDataSourceImpl(apiServices: getIt<ApiServices>()),
  );
  getIt.registerSingleton<SortRemoteDataSource>(
    SortRemoteDataSourceImpl(apiServices: getIt<ApiServices>()),
  );
  getIt.registerSingleton<SearchRepo>(
    SearchRepoImpl(
      sortRemoteDataSource: getIt<SortRemoteDataSource>(),
      searchRemoteDataSource: getIt<SearchRemoteDataSource>(),
    ),
  );
}

void profileFeature() {
  getIt.registerSingleton<ProfileRemoteDataSource>(
  ProfileRemoteDataSourceImpl(apiServices: getIt<ApiServices>()),
  );
  getIt.registerSingleton<ProfileRepo>(
    ProfileRepoImpl(profileRemoteDataSource: getIt<ProfileRemoteDataSource>()),
  );

  // Profile use cases & cubits
  getIt.registerSingleton<GetUserDataUseCase>(
    GetUserDataUseCase(profileRepo: getIt<ProfileRepo>()),
  );
  getIt.registerSingleton<GetUserDataCubit>(
    GetUserDataCubit(getIt<GetUserDataUseCase>()),
  );
}
