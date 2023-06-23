import 'package:bookly_app/core/api_service.dart';
import 'package:bookly_app/faetures/homepage/data/models/book_model/book_model.dart';
import 'package:bookly_app/faetures/homepage/data/failures/failures.dart';
import 'package:bookly_app/faetures/homepage/data/repostries/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dartz/dartz_unsafe.dart';

class HomeRepoImpl implements HomeRepo{

  final APIService apiService=APIService();

  @override
  Future<Either<Failures, List<BookModel>>> fetchNewestBooks()async {

   try {
    var data =await apiService.get(endpoint: 'https://www.googleapis.com/books/v1/volumes?Filtering=free-ebooks&Sorting=newest &q=subject:programming&download=epub');
    List<BookModel> books= [];

    for (var i in data['items']) {
      books.add(BookModel.fromBookData(i));
     
    }

    return right(books);
    
     
   } 
   catch (e) {
     return left(TempFailure());
   }


    
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchListviewBooks() {
    
  }

  
}