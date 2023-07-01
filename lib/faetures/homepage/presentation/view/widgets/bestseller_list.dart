import 'package:bookly_app/core/widgets/customError.dart';
import 'package:bookly_app/core/widgets/custom_circleprogress.dart';
import 'package:bookly_app/faetures/homepage/presentation/view/widgets/bestsellerElement.dart';
import 'package:bookly_app/faetures/homepage/presentation/view_model/bestseller_cubit/cubit/best_seller_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BestSellerCubit, BestSellerState>(
      builder: (context, state) {
        if(state is BestSellerSucess){
        return ListView.builder(
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) =>  Padding(
            padding: const EdgeInsets.only(right: 8.0, left: 8, bottom: 5, top: 15),
            child: BestSellerElement(imageURL: state.books[index].volumeInfo!.imageLinks!.thumbnail),
          ),
          itemCount: state.books.length,
        );}
        else if(state is BestSellerfailure)
        {
          return CustomError(error: state.errorMessage);
        }
        else{
          return const CustomCircleProgress();
        }
      },
    );
  }
}
