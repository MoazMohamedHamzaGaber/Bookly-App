import 'package:bookly/feauture/Home/data/models/book_model/items.dart';


abstract class FeaturedBooksStates{}

class FeaturedBooksInitial extends FeaturedBooksStates{}

class FeaturedBooksLoading extends FeaturedBooksStates{}
class FeaturedBooksSuccess extends FeaturedBooksStates{
  final List<Items>books;

  FeaturedBooksSuccess({required this.books});
}
class FeaturedBooksError extends FeaturedBooksStates{
  final String errMessage;

  FeaturedBooksError({required this.errMessage});
}
