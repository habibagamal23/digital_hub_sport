import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../features/auth/data/login_repository.dart';
import '../../features/auth/logic/auth_cubit.dart';
import '../chachHelper/chachhelper.dart';
import '../connection/NetworkInfo.dart';
import '../connection/NetworkInfoImpl.dart';
import '../network/apiConsumer.dart';

import '../firebase/auth_service.dart';

final getit = GetIt.instance;

void setGetit() {
  /// Network
  getit.registerLazySingleton(() => InternetConnectionChecker.instance);

  // Register NetworkInfo implementation
  getit.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(getit<InternetConnectionChecker>()));

  /// CacheHelper (local cache)
  getit.registerLazySingleton<CacheHelper>(() => CacheHelper());

  /// AuthService (Firebase)
  getit.registerLazySingleton<AuthService>(() => AuthService());

  /// LoginRepository
  getit.registerLazySingleton<LoginRepository>(
      () => LoginRepository(getit<AuthService>()));

  /// AuthCubit
  getit.registerFactory<AuthCubit>(() => AuthCubit(getit<LoginRepository>()));
}
