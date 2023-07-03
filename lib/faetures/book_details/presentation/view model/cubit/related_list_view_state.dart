part of 'related_list_view_cubit.dart';

abstract class RelatedListViewState extends Equatable {
  const RelatedListViewState();

  @override
  List<Object> get props => [];
}

class RelatedListViewInitial extends RelatedListViewState {}

class RelatedListViewLoading extends RelatedListViewState {}

class RelatedListViewFailure extends RelatedListViewState {
  RelatedListViewFailure({required this.errorMessage});
   String errorMessage;
}

class RelatedListViewSucess extends RelatedListViewState {
  RelatedListViewSucess({required this.books});
  List<BookModel> books;
}
