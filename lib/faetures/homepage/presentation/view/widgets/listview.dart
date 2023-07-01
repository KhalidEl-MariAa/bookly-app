import 'dart:math';

import 'package:bookly_app/core/widgets/customError.dart';
import 'package:bookly_app/core/widgets/custom_circleprogress.dart';
import 'package:bookly_app/faetures/homepage/presentation/view/widgets/listviewElement.dart';
import 'package:bookly_app/faetures/homepage/presentation/view_model/listviewBooks_cubit/cubit/list_view_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListviewOfHomePage extends StatelessWidget {
  const ListviewOfHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ListViewBooksCubit,ListViewBooksState>(
      builder: (BuildContext context, state) { 
        if (state is ListViewBooksSuccess) {
          return Padding(
        padding: const EdgeInsets.only(top: 8, right: 20),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.30,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: state.books.length,
            itemBuilder: (context, index) => ListViewElement(
              aspectRatio: 1/1.5,
              imageURL: state.books[index].volumeInfo!.imageLinks!.thumbnail.toString(),
                height: MediaQuery.of(context).size.height * 0.25),
          ),
        ),
      );
          }
          else if (state is ListViewBooksFailure){
            return CustomError(error: state.errorMessage);
          }
          else{
            return const CustomCircleProgress();
          }
       },
       
    );
  }
}
