import 'package:bookly_app/faetures/homepage/presentation/view/widgets/appbar.dart';
import 'package:bookly_app/faetures/homepage/presentation/view/widgets/listview.dart';

import 'package:flutter/material.dart';

class Homepagebody extends StatelessWidget {
  const Homepagebody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [CustomAppBar(),ListviewOfHomePage()],
      
    );
  }
}

