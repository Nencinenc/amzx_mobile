import 'dart:io';

import 'package:amzx/configuration/services/api.dart';
import 'package:amzx/configuration/services/error_messages.dart';
import 'package:amzx/providers/camapings_page_provider.dart';
import 'package:amzx/providers/main_page_provider.dart';
import 'package:amzx/repositories/campaigns.dart';
import 'package:amzx/repositories/products.dart';
import 'package:amzx/repositories/secure_storage_repo.dart';
import 'package:amzx/repositories/user.dart';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';

import '../providers/products_page_provider.dart';
import 'interceptors/network_errors.dart';

final getIt = GetIt.instance;

Future setup() async {
  await _registerRepositories();
  await _registerProviders();
}

Future _registerRepositories() async {
  getIt.registerLazySingleton<API>(() => API(
        storageService: getIt(),
      ));

  getIt.registerLazySingleton<Dio>(() {
    final dio = Dio()
      ..interceptors.add(
        NetworkErrorsInterceptor(),
      );
    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    };
    return dio;
  });

  getIt.registerLazySingleton<SecureStorageRepo>(
    () => SecureStorageRepo(storage: const FlutterSecureStorage()),
  );
  getIt.registerLazySingleton<ErrorMessagesService>(
    () => ErrorMessagesService(),
  );
  getIt.registerLazySingleton<UserRepository>(
    () => UserRepository(
      storageService: getIt(),
      apiService: getIt(),
    ),
  );
  getIt.registerLazySingleton<ProductsRepository>(
    () => ProductsRepository(),
  );
  getIt.registerLazySingleton<CampaignsRepository>(
    () => CampaignsRepository(),
  );
}

Future _registerProviders() async {
  getIt.registerLazySingleton(
    () => MainPageProvider(),
  );
  getIt.registerLazySingleton(
    () => ProductsPageProvider(),
  );
  getIt.registerLazySingleton(
    () => CampaignsPageProvider(),
  );
}
