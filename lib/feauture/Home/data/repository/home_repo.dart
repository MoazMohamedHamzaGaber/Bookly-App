import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/feauture/Home/data/models/book_model/items.dart';
import 'package:dartz/dartz.dart';


abstract class HomeRepos{
 Future<Either< Failure,List<Items>>> fetchBestSellerBooks();
 Future<Either< Failure,List<Items>>> fetchFeaturedBooks();
}