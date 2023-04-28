import 'package:bookly_app/faetures/homepage/presentation/view/widgets/bestsellerElement.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child:  ListView.builder(
        itemBuilder: (context, index) => const Padding(
          padding:  EdgeInsets.only(right:8.0,left: 8,bottom:20),
          child: BestSellerElement(),
        ),
        itemCount: 10,
        
      ));
      
      }}
        