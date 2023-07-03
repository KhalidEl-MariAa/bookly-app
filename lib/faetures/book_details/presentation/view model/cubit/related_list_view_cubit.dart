
import 'package:bookly_app/faetures/homepage/data/repostries/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../homepage/data/models/book_model/book_model.dart';

part 'related_list_view_state.dart';

class RelatedListViewCubit extends Cubit<RelatedListViewState> {
  RelatedListViewCubit({required this.homeRepo}) : super(RelatedListViewInitial());
  HomeRepo homeRepo;

  Future<void> FetchRelatedListViewBooks ()async {

    var result= await homeRepo.fetchRelatedBooks();
    result.fold((failure) {
      emit(RelatedListViewFailure(errorMessage: failure.errorMessage));
    },
     (books) {
     emit(RelatedListViewSucess(books: books));
     });
  }
}
