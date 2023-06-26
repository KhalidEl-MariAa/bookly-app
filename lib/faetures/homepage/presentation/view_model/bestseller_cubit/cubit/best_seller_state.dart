part of 'best_seller_cubit.dart';

abstract class BestSellerState extends Equatable {
  const BestSellerState();

  @override
  List<Object> get props => [];
}

class BestSellerInitial extends BestSellerState {}

class BestSellerSucess extends BestSellerState {
  final List<BookModel> books;

 const BestSellerSucess(this.books);
  
}

class BestSellerLoading extends BestSellerState {}

class BestSellerfailure extends BestSellerState {
  final String errorMessage;

  const BestSellerfailure(this.errorMessage);
}
