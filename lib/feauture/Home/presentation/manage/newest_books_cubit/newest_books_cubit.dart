import 'package:bookly/feauture/Home/data/repository/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'newest_books_states.dart';

class NewestBooksCubit extends Cubit<NewestBooksStates> {
  NewestBooksCubit(this.homeRepos) : super(NewestBooksInitial());

  NewestBooksCubit get(context) => BlocProvider.of(context);

  final HomeRepos homeRepos;

  void fetchNewestBooks() async {
    emit(NewestBooksLoading());
    var result = await homeRepos.fetchBestSellerBooks();

    result.fold(
      (failure){
        emit(NewestBooksError(errMessage: failure.errMessage));
      },
      (books) {
        emit(NewestBooksSuccess(books: books));
      },
    );
  }
}
