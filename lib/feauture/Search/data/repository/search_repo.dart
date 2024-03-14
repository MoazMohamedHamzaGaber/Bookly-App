import 'package:bookly/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

import '../../../Home/data/models/book_model/items.dart';

abstract class SearchRepo{
 Future<Either<Failure,List<Items>>> fetchSearchBooks({required String name});
}