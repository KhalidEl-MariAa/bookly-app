import 'package:bookly_app/faetures/homepage/presentation/view/widgets/bestsellerElement.dart';
import 'package:flutter/material.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      itemBuilder: (context, index) =>  Padding(
        padding:const  EdgeInsets.only(top: 10.0),
        child: BestSellerElement(imageURL: ''),
      ),
      itemCount: 10,
    );
  }
}
