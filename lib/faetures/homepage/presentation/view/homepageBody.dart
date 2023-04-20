import 'package:bookly_app/faetures/homepage/presentation/view/widgets/appbar.dart';
import 'package:bookly_app/faetures/homepage/presentation/view/widgets/listview.dart';

import 'package:flutter/material.dart';

class Homepagebody extends StatelessWidget {
  const Homepagebody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [CustomAppBar(),
        ListviewOfHomePage(),
        Padding(
          padding: EdgeInsets.only(left:14,top: 15),
          child: Text('Best Seller',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
        )],
        
      ),
    );
  }
}

