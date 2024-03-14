import 'package:bookly/core/utiles/setup_service_locator.dart';
import 'package:bookly/feauture/Search/data/repository/search_repo_impl.dart';
import 'package:bookly/feauture/Search/presentation/manage/cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'widget/search_view_body.dart';

class SearchView extends StatelessWidget {
   const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context)=>SearchCubit(getIt.get<SearchRepoImpl>()),
        child: const SearchViewBody());
  }
}
