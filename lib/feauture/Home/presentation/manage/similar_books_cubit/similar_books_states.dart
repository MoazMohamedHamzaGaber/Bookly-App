import 'package:bookly/feauture/Home/data/models/book_model/items.dart';


abstract class SimilarBooksStates{}

class SimilarBooksInitial extends SimilarBooksStates{}

class SimilarBooksLoading extends SimilarBooksStates{}
class SimilarBooksSuccess extends SimilarBooksStates{
  final List<Items>books;

  SimilarBooksSuccess({required this.books});
}
class SimilarBooksError extends SimilarBooksStates{
  final String errMessage;

  SimilarBooksError({required this.errMessage});
}
