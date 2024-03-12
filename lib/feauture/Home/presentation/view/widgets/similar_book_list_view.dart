import 'package:bookly/core/errors/custom_error_vwdget.dart';
import 'package:bookly/feauture/Home/presentation/manage/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/feauture/Home/presentation/manage/similar_books_cubit/similar_books_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'custom_list_view.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit,SimilarBooksStates>(
      builder: (BuildContext context, state) {
        if(state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => CustomListViewItem(
                items: state.books[index],
              ),
              separatorBuilder: (context, index) => const SizedBox(
                width: 15,
              ),
              itemCount: 10,
            ),
          );
        }else if(state is SimilarBooksError){
          return CustomErrorWidget(text: state.errMessage);
        }else{
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
