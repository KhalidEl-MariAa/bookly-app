import 'package:bookly_app/faetures/book_details/presentation/view/widgets/bd_AppBar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../homepage/presentation/view/widgets/listviewElement.dart';

class BookDetailsPageBody extends StatelessWidget {
  const BookDetailsPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children:  [
           const Padding(
            padding: EdgeInsets.all(13),
            child: BookDetailsAppBar(),
          ),
          ListViewElement(height: MediaQuery.of(context).size.height*0.28,),
           Padding(
             padding: const EdgeInsets.only(top:32),
             child: Text('The Book Title ',style: GoogleFonts.adamina().copyWith(fontSize:19,fontWeight: FontWeight.bold)),
           ),
           Padding(
            padding: const EdgeInsets.symmetric(vertical:7.0,horizontal: 30),
            child: Text('Book Description : What are the topics that the book discuss',
            maxLines: 3,
            overflow: TextOverflow.ellipsis
            ,style: TextStyle(color: Colors.white.withOpacity(0.5),fontSize: 13)))],
           ),
      ),
    );
  }
}


