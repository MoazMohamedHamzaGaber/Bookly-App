import 'package:bookly/core/utiles/constants.dart';
import 'package:bookly/core/utiles/setup_service_locator.dart';
import 'package:bookly/feauture/Home/data/repository/home_repo_impl.dart';
import 'package:bookly/feauture/Home/presentation/manage/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/feauture/Home/presentation/manage/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'feauture/Home/presentation/view/home_view.dart';

void main() {
  setupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) => FeaturedBooksCubit(
            getIt.get<HomeReposImpl>()
          )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (BuildContext context) => NewestBooksCubit(
              getIt.get<HomeReposImpl>()
          )..fetchNewestBooks(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme:
            ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor),
        home:  const HomeView(),
      ),
    );
  }
}
