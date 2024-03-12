import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/utiles/api_service.dart';
import 'package:bookly/feauture/Home/data/models/book_model/items.dart';
import 'package:bookly/feauture/Home/data/repository/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';


class HomeReposImpl implements HomeRepos {
  final ApiService apiService;

  HomeReposImpl(this.apiService);


  @override
  Future<Either<Failure, List<Items>>> fetchBestSellerBooks() async {
    try{
      var data=await apiService.get(url: 'volumes?Filtering=free-ebooks&Sorting=newest &q=computer science');
      List<dynamic> items = data['items'];
      List<Items>bestSellerBooks= items.map((item) => Items.fromJson(item)).toList();
      return right(bestSellerBooks);
    }catch (e){
      if(e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Items>>> fetchFeaturedBooks() async {
    try {
      var data= await apiService.get(url: 'volumes?Filtering=free-ebooks&q=programming');

      List<dynamic> items = data['items'];
      List<Items> books = items.map((item) => Items.fromJson(item)).toList();

      return right(books);
    } catch (e) {
      if(e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
