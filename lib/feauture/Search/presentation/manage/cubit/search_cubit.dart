import 'package:bookly/feauture/Search/data/repository/search_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'search_states.dart';

class SearchCubit extends Cubit<SearchStates> {
  SearchCubit(this.searchRepo) : super(SearchInitial());

  SearchCubit get(context) => BlocProvider.of(context);

  final SearchRepo searchRepo;

  void fetchSearch({
    required String name,
}) async {
    emit(SearchLoading());
    var result = await searchRepo.fetchSearchBooks(name: name);
    result.fold((failure){
      emit(SearchError(errMessage: failure.errMessage));
    }, (books) {
      emit(SearchSuccess(books: books));
    });
  }
}
