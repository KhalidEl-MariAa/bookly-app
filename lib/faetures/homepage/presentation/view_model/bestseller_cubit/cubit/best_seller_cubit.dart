import 'package:bloc/bloc.dart';
import 'package:bookly_app/faetures/homepage/data/models/book_model/book_model.dart';
import 'package:bookly_app/faetures/homepage/data/repostries/home_repo.dart';
import 'package:equatable/equatable.dart';
part 'best_seller_state.dart';

class BestSellerCubit extends Cubit<BestSellerState> {
  BestSellerCubit(this.homeRepo) : super(BestSellerInitial());
  HomeRepo homeRepo;

  Future<void> fetchBestSellerBooks()async{

    emit(BestSellerLoading());
    var result =await  homeRepo.fetchNewestBooks();
   result.fold((failure) {
    emit(BestSellerfailure(failure.errorMessage));
    
   }, 
   (books) {
    emit(BestSellerSucess(books));
   });

  }
}
