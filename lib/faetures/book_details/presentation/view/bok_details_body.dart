import 'package:bookly_app/faetures/book_details/presentation/view/widgets/bd_AppBar.dart';
import 'package:bookly_app/faetures/book_details/presentation/view/widgets/bd_buttonRow.dart';
import 'package:bookly_app/faetures/book_details/presentation/view/widgets/bd_rating.dart';
import 'package:bookly_app/faetures/book_details/presentation/view/widgets/relatedListView.dart';
import 'package:bookly_app/faetures/homepage/presentation/view/widgets/listview.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../homepage/presentation/view/widgets/listviewElement.dart';

class BookDetailsPageBody extends StatelessWidget {
  const BookDetailsPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:  
                      
                       SingleChildScrollView(
                        
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height,
                            
                             child: Column(
                              
                                
                                  
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.all(13),
                                      child: BookDetailsAppBar(),
                                    ),
                                    ListViewElement(
                                      aspectRatio: 1/1.5,
                                      imageURL: 'https://th.bing.com/th?id=OIP.cVVOKQ82RKxkqvX_YzdydgHaGL&w=273&h=228&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2',
                                      height: MediaQuery.of(context).size.height * 0.28,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 32),
                                      child: Text('The Book Title ',
                                          style: GoogleFonts.adamina()
                                              .copyWith(fontSize: 19, fontWeight: FontWeight.bold)),
                                    ),
                                    const Expanded(
                                        child: SizedBox(
                                      height: 7,
                                    )),
                                    Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 30),
                                        child: Text(
                                            'Book Description : What are the topics that the book discuss',
                                            maxLines: 3,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                color: Colors.white.withOpacity(0.5),
                                                fontSize: 13))),
                                    const RatingPart(),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 10),
                                      child: RowOfButtonActions(),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 30, top: 30),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          'You may also like',
                                          style: TextStyle(
                                            fontSize: 18,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 30),
                                      child:  RelatedListView(),
                                    )
                                  ],
                                ),
                           ),
                         ),
                       ),
                     
                    
                  
                
                )
        
            
              ;
      
    
  }
}