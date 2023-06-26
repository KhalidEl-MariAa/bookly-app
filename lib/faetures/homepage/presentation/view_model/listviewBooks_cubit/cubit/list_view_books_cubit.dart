import 'package:bloc/bloc.dart';
import 'package:bookly_app/faetures/homepage/data/models/book_model/book_model.dart';
import 'package:bookly_app/faetures/homepage/data/repostries/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'list_view_books_state.dart';

class ListViewBooksCubit extends Cubit<ListViewBooksState> {
  ListViewBooksCubit(this.homeRepo) : super(ListViewBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchListViewBooks()async{

    emit(ListViewBooksLoading());
    var result =await  homeRepo.fetchListviewBooks();
   result.fold((failure) {
    emit(ListViewBooksFailure(failure.errorMessage));
    
   }, 
   (books) {
    emit(ListViewBooksSuccess(books));
   });

  }
}
