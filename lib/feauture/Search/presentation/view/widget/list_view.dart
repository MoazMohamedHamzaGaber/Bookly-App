import 'package:bookly/core/errors/custom_error_vwdget.dart';
import 'package:bookly/feauture/Search/presentation/manage/cubit/search_cubit.dart';
import 'package:bookly/feauture/Search/presentation/manage/cubit/search_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../Home/presentation/view/widgets/best_seller_list_view_item.dart';

class ListViews extends StatelessWidget {
  const ListViews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchStates>(
      builder: (BuildContext context, state) {
        if (state is SearchSuccess) {
          return Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) => BestSellerListViewItem(
                items: state.books[index],
              ),
              itemCount: state.books.length,
            ),
          );
        } else if (state is SearchError) {
          return CustomErrorWidget(text: state.errMessage);
        } else if (state is SearchLoading) {
          return const LinearProgressIndicator();
        } else {
          return Container();
        }
      },
    );
  }
}
