import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/feauture/Home/data/models/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepos{
 Future<Either< Failure,List<BookModel>>> fetchBestSellerBooks();
 Future<Either< Failure,List<BookModel>>> fetchFeaturedBooks();
}