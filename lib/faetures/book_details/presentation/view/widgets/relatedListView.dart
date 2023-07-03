import 'package:bookly_app/core/reusable.dart';
import 'package:bookly_app/core/widgets/customError.dart';
import 'package:bookly_app/core/widgets/custom_circleprogress.dart';
import 'package:bookly_app/faetures/book_details/presentation/view%20model/cubit/related_list_view_cubit.dart';
import 'package:bookly_app/faetures/homepage/data/repostries/home_repo_impl.dart';
import 'package:bookly_app/faetures/homepage/presentation/view/widgets/listviewElement.dart';
import "package:flutter/material.dart";
import 'package:flutter_bloc/flutter_bloc.dart';

class RelatedListView extends StatelessWidget {
  const RelatedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          RelatedListViewCubit(homeRepo: getit.get<HomeRepoImpl>())
            ..FetchRelatedListViewBooks(),
      child: BlocBuilder<RelatedListViewCubit, RelatedListViewState>(
        builder: (context, state) {
          if(state is RelatedListViewSucess){
          return Padding(
            padding: const EdgeInsets.only(top: 8, right: 20),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.30,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: state.books.length,
                itemBuilder: (context, index) => ListViewElement(
                    aspectRatio: 1 / 1.5,
                    imageURL: state
                        .books[index].volumeInfo!.imageLinks!.thumbnail
                        .toString(),
                    height: MediaQuery.of(context).size.height * 0.25),
              ),
            ),
          );}
          else if(state is RelatedListViewFailure){
            return CustomError(error: state.errorMessage);
          }
          else{
            return const CustomCircleProgress();
          }
        },
      ),
    );
  }
}
