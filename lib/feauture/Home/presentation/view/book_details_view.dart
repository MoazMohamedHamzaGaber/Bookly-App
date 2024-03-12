import 'package:bookly/feauture/Home/presentation/view/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/utiles/setup_service_locator.dart';
import '../../data/models/book_model/items.dart';
import '../../data/repository/home_repo_impl.dart';
import '../manage/similar_books_cubit/similar_books_cubit.dart';

class BookDetailsView extends StatelessWidget {
   const BookDetailsView({Key? key, required this.items}) : super(key: key);

   final Items items;
  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (BuildContext context) => SimilarBooksCubit(
        getIt.get<HomeReposImpl>(),
      )..fetchSimilarBooks(category: items.volumeInfo.categories![0]),
      child: Scaffold(
        body: BookDetailsViewBody(items: items,),
      ),
    );
  }
}
