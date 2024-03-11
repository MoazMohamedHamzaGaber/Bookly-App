import 'package:dio/dio.dart';

class ApiService{
  final String _baseUrl='https://www.googleapis.com/books/v1/';

  final Dio dio;

  ApiService(this.dio);


  Future<Response> get({
    required String url,
})async{
  var response= await dio.get('$_baseUrl$url');
  return response.data;
  }
}