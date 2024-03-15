import 'package:bookly/core/utiles/setup_service_locator.dart';
import 'package:bookly/feauture/Search/data/repository/search_repo_impl.dart';
import 'package:bookly/feauture/Search/presentation/manage/cubit/search_cubit.dart';
import 'package:bookly/feauture/Search/presentation/manage/cubit/search_states.dart';
import 'package:bookly/feauture/Search/presentation/view/widget/search_app_bar.dart';
import 'package:bookly/feauture/Search/presentation/view/widget/search_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utiles/style.dart';
import 'list_view.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchStates>(
      builder: (BuildContext context, state) {
        var cubit = SearchCubit(getIt.get<SearchRepoImpl>()).get(context);
        return Scaffold(
          appBar: buildAppBar(context),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SearchTextField(cubit: cubit),
                  const SizedBox(
                    height: 20,
                  ),
                  if(state is SearchSuccess)
                    const Text('Search Result',
                      style: Style.textStyle20,
                    ),
                  const ListViews(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
