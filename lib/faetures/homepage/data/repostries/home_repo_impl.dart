import 'package:bookly_app/faetures/homepage/data/models/book_model/book_model.dart';
import 'package:bookly_app/faetures/homepage/data/failures/failures.dart';
import 'package:bookly_app/faetures/homepage/data/repostries/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo{
  @override
  Future<Either<Failures, List<BookModel>>> fetchBestsellerBooks() {
    // TODO: implement FetchBestsellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchListviewBooks() {
    // TODO: implement FetchListviewBooks
    throw UnimplementedError();
  }

  
}