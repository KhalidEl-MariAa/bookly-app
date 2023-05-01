import 'package:bookly_app/faetures/book_details/presentation/view/widgets/bd_AppBar.dart';
import 'package:flutter/material.dart';

class BookDetailsPageBody extends StatelessWidget {
  const BookDetailsPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: const [Padding(
            padding: EdgeInsets.all(13),
            child: BookDetailsAppBar(),
          )],),
      ),
    );
  }
}


