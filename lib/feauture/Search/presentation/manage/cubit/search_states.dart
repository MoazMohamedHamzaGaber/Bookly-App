import 'package:bookly/feauture/Home/data/models/book_model/items.dart';


abstract class SearchStates{}

class SearchInitial extends SearchStates{}

class SearchLoading extends SearchStates{}
class SearchSuccess extends SearchStates{
  final List<Items>books;

  SearchSuccess({required this.books});
}
class SearchError extends SearchStates{
  final String errMessage;

  SearchError({required this.errMessage});
}
