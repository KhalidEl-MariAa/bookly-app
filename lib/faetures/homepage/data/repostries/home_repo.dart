import 'package:bookly_app/faetures/homepage/data/failures/failures.dart';
import 'package:bookly_app/faetures/homepage/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo{

Future<Either<Failures,List<BookModel>>>  fetchListviewBooks();

Future<Either<Failures,List<BookModel>>> fetchNewestBooks();

}