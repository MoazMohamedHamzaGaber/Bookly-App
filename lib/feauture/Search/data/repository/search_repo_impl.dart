import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/utiles/api_service.dart';
import 'package:bookly/feauture/Home/data/models/book_model/items.dart';
import 'package:bookly/feauture/Search/data/repository/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl implements SearchRepo{
 final ApiService apiService;

  SearchRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<Items>>> fetchSearchBooks({required String name})async {
   try{
    var data=await apiService.get(url: 'volumes?Filtering=free-ebooks&q=$name');
    List<dynamic> items = data['items'];
    List<Items>searchBooks= items.map((item) => Items.fromJson(item)).toList();
    return right(searchBooks);
   }catch (e){
    if(e is DioException){
     return left(ServerFailure.fromDioError(e));
    }else{
     return left(ServerFailure(e.toString()));
    }
   }
  }


}