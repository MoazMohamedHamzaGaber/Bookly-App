import 'package:bookly/feauture/Home/data/repository/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'api_service.dart';

 final getIt = GetIt.instance;

  void setupServiceLocator() {
    getIt.registerSingleton<ApiService>(
      ApiService(
        Dio(),
      ),
    );
    getIt.registerSingleton<HomeReposImpl>(
      HomeReposImpl(
        getIt.get<ApiService>(),
      ),
    );
  }
