import 'package:bookly_app/core/api_service.dart';
import 'package:bookly_app/faetures/homepage/data/models/book_model/book_model.dart';
import 'package:bookly_app/faetures/homepage/data/failures/failures.dart';
import 'package:bookly_app/faetures/homepage/data/repostries/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo{

  final APIService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failures, List<BookModel>>> fetchNewestBooks()async {

   try {
    var data =await apiService.get(endpoint: 'volumes?Filtering=free-ebooks&Sorting=newest &q=subject:novel&download=epub');
    List<BookModel> books= [];

    for (var i in data['items']) {
      books.add(BookModel.fromBookData(i));
     
    }

    return right(books);
    
     
   } 
   catch (e) {
     if (e is DioException ) {
     return left(ServerFailure.fromDioError(e));
       
     }
     else{
      return left(ServerFailure(e.toString()));
     }
   }


   
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchListviewBooks()async {
    try {
      var data= await apiService.get(endpoint: 'volumes?Filtering=free-ebooks&q=programming');
      List<BookModel> boooks =[];

      for(var i in data['items']){
        boooks.add(BookModel.fromBookData(i));
      }
      return right(boooks);

    } catch (e) {

      if (e is DioException){
        return left(ServerFailure.fromDioError(e));
      }
      else{
        return left(ServerFailure(e.toString()));
      }
      
    }
  }
  
  @override
  Future<Either<Failures, List<BookModel>>> fetchRelatedBooks() async {
    
    
   try {
    var data =await apiService.get(endpoint: 'volumes?Filtering=free-ebooks&Sorting=relevance&q=health');
    List<BookModel> books= [];

    for (var i in data['items']) {
      books.add(BookModel.fromBookData(i));
     
    }

    return right(books);
    
     
   } 
   catch (e) {
     if (e is DioException ) {
     return left(ServerFailure.fromDioError(e));
       
     }
     else{
      return left(ServerFailure(e.toString()));
     }
   }
  }

  
}