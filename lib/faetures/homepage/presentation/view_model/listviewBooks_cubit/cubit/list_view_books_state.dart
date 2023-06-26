part of 'list_view_books_cubit.dart';

abstract class ListViewBooksState extends Equatable {
  const ListViewBooksState();

  @override
  List<Object> get props => [];
}

class ListViewBooksInitial extends ListViewBooksState {}

class ListViewBooksLoading extends ListViewBooksState {}

class ListViewBooksSuccess extends ListViewBooksState {
  final List<BookModel> books;

 const ListViewBooksSuccess(this.books);
}

class ListViewBooksFailure extends ListViewBooksState{
  final String errorMessage;
 const ListViewBooksFailure(this.errorMessage);
}

