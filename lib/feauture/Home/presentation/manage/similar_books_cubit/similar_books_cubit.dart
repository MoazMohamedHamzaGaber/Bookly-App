import 'package:bookly/feauture/Home/data/repository/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'similar_books_states.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksStates> {
  SimilarBooksCubit(this.homeRepos) : super(SimilarBooksInitial());

  SimilarBooksCubit get(context) => BlocProvider.of(context);

  final HomeRepos homeRepos;

  void fetchSimilarBooks({
    required String category,
}) async {
    emit(SimilarBooksLoading());
    var result = await homeRepos.fetchSimilarBooks(category: category);

    result.fold(
      (failure){
        emit(SimilarBooksError(errMessage: failure.errMessage));
      },
      (books) {
        emit(SimilarBooksSuccess(books: books));
      },
    );
  }
}
