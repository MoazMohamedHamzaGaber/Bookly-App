import 'package:bookly/core/errors/custom_error_vwdget.dart';
import 'package:bookly/core/utiles/custom_Loading.dart';
import 'package:bookly/feauture/Home/presentation/manage/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/feauture/Home/presentation/manage/featured_books_cubit/featured_books_states.dart';
import 'package:bookly/feauture/Home/presentation/view/widgets/custom_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatureBooksListView extends StatelessWidget {
  const FeatureBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksStates>(
      builder: (BuildContext context, state) {
        if (state is FeaturedBooksSuccess) {
          return Padding(
            padding: const EdgeInsets.only(
              top: 30,
            ),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * .28,
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => CustomListViewItem(
                  items: state.books[index],
                ),
                separatorBuilder: (context, index) => const SizedBox(
                  width: 15,
                ),
                itemCount: state.books.length,
              ),
            ),
          );
        } else if (state is FeaturedBooksError) {
          return CustomErrorWidget(text: state.errMessage);
        } else {
          return const CustomLoading(isLoading: false,);
        }
      },
    );
  }
}
