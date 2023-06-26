import 'package:bloc/bloc.dart';
import 'package:bookly_app/faetures/homepage/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'list_view_books_state.dart';

class ListViewBooksCubit extends Cubit<ListViewBooksState> {
  ListViewBooksCubit() : super(ListViewBooksInitial());
}
