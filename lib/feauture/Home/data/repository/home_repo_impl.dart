import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/utiles/api_service.dart';
import 'package:bookly/feauture/Home/data/models/book_model.dart';
import 'package:bookly/feauture/Home/data/repository/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeReposImpl implements HomeRepos {
  final ApiService apiService;

  HomeReposImpl(this.apiService);


  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() async {
    try {
      var data= await apiService.get(url: 'volumes?Filtering=free-ebooks&Sorting=newest &q=programming');

      return right(data.data);
    } catch (e) {
      if(e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
