import 'package:bookly/feauture/Home/data/repository/home_repo.dart';
import 'package:bookly/feauture/Home/presentation/manage/featured_books_cubit/featured_books_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksStates> {
  FeaturedBooksCubit(this.homeRepos) : super(FeaturedBooksInitial());

  FeaturedBooksCubit get(context) => BlocProvider.of(context);

  final HomeRepos homeRepos;

  void fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await homeRepos.fetchFeaturedBooks();
    result.fold((failure){
      emit(FeaturedBooksError(errMessage: failure.errMessage));
    }, (books) {
      emit(FeaturedBooksSuccess());
    });
  }
}
