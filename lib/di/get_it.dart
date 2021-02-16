import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';

import 'package:http/http.dart';
import 'package:mifift/core/api_client.dart';
import 'package:mifift/data/data_sources/auth_source.dart';
import 'package:mifift/data/repositories/auth_repository_implementation.dart';
import 'package:mifift/domain/repositories/auth_repository.dart';
import 'package:mifift/presentation/blocs/login_cubit/login_cubit.dart';

final getItInstance = GetIt.I;

Future init() async {
  getItInstance.registerLazySingleton<Dio>(() => Dio());
  getItInstance
      .registerLazySingleton<ApiClient>(() => ApiClient(getItInstance()));
  getItInstance.registerLazySingleton<AuthSource>(
      () => AuthSourceImplementation(getItInstance()));
  getItInstance.registerLazySingleton<FlutterSecureStorage>(() => FlutterSecureStorage());
  getItInstance.registerLazySingleton<AuthRespository>(() => AuthRepositoryImpl(getItInstance(),getItInstance()));
  getItInstance.registerFactory<LoginCubit>(() => LoginCubit(getItInstance()));
}