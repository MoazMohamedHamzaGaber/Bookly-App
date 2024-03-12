import 'package:bookly/core/errors/custom_error_vwdget.dart';
import 'package:bookly/core/loading/newest_Loading.dart';
import 'package:bookly/feauture/Home/presentation/manage/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/feauture/Home/presentation/manage/newest_books_cubit/newest_books_states.dart';
import 'package:bookly/feauture/Home/presentation/view/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksStates>(
      builder: (BuildContext context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => BestSellerListViewItem(
              items: state.books[index],
            ),
            itemCount: state.books.length,
          );
        } else if (state is NewestBooksError) {
          return CustomErrorWidget(text: state.errMessage);
        } else {
          return const NewestLoading();
        }
      },
    );
  }
}
