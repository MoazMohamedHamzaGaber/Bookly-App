abstract class FeaturedBooksStates{}

class FeaturedBooksInitial extends FeaturedBooksStates{}

class FeaturedBooksLoading extends FeaturedBooksStates{}
class FeaturedBooksSuccess extends FeaturedBooksStates{}
class FeaturedBooksError extends FeaturedBooksStates{
  final String errMessage;

  FeaturedBooksError({required this.errMessage});
}
