import 'package:bookly/feauture/Home/data/models/book_model/items.dart';


abstract class NewestBooksStates{}

class NewestBooksInitial extends NewestBooksStates{}

class NewestBooksLoading extends NewestBooksStates{}
class NewestBooksSuccess extends NewestBooksStates{
  final List<Items>books;

  NewestBooksSuccess({required this.books});
}
class NewestBooksError extends NewestBooksStates{
  final String errMessage;

  NewestBooksError({required this.errMessage});
}
