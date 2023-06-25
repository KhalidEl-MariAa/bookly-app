import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'best_seller_state.dart';

class BestSellerCubit extends Cubit<BestSellerState> {
  BestSellerCubit() : super(BestSellerInitial());
}
