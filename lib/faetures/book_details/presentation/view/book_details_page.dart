import 'package:bookly_app/core/routing.dart';
import 'package:bookly_app/faetures/book_details/presentation/view/bok_details_body.dart';
import 'package:bookly_app/faetures/homepage/data/models/book_model/book_model.dart';

import 'package:flutter/material.dart';


class BookDetailsPage extends StatelessWidget {
 const BookDetailsPage({super.key});
 
 
  
  

  @override
  Widget build(BuildContext context) {
    
    return  BookDetailsPageBody(bookModel: ModalRoute.of(context)!.settings.arguments as BookModel,);
  }
}
