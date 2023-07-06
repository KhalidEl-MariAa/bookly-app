import 'package:bookly_app/faetures/book_details/presentation/view/widgets/bd_AppBar.dart'; 
import 'package:bookly_app/faetures/book_details/presentation/view/widgets/bd_buttonRow.dart'; 
import 'package:bookly_app/faetures/book_details/presentation/view/widgets/bd_rating.dart';
import 'package:bookly_app/faetures/book_details/presentation/view/widgets/relatedListView.dart';
import 'package:bookly_app/faetures/homepage/data/models/book_model/book_model.dart'; 
import 'package:bookly_app/faetures/homepage/presentation/view/widgets/listview.dart'; 
 
import 'package:flutter/material.dart'; 
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart'; 
 
import '../../../homepage/presentation/view/widgets/listviewElement.dart'; 
 
class BookDetailsPageBody extends StatelessWidget { 
  const BookDetailsPageBody({super.key, required this.bookModel});
  final BookModel bookModel; 
 
  @override 
  Widget build(BuildContext context) { 
    return SafeArea( 
      child: Scaffold( 
        body:   CustomScrollView( 
               
              slivers:[ 
               
                  
                     SliverFillRemaining( 
                      hasScrollBody: false, 
                       child: Column( 
                        mainAxisAlignment: MainAxisAlignment.center,
                           
                             
                            children: [ 
                              const Padding( 
                                padding: EdgeInsets.all(13), 
                                child: BookDetailsAppBar(), 
                              ), 
                              ListViewElement( 
                                imageURL: bookModel.volumeInfo!.imageLinks!.thumbnail!, 
                                height: MediaQuery.of(context).size.height * 0.28,
                                 aspectRatio: 1/1.5, 
                              ), 
                              Padding( 
                                padding: const EdgeInsets.only(top: 20,), 
                                child: Text(bookModel.volumeInfo!.title!, 
                                    style: GoogleFonts.adamina() 
                                        .copyWith(fontSize: 19, fontWeight: FontWeight.bold,),textAlign: TextAlign.center,), 
                              ), 
                              const Expanded( 
                                  child: SizedBox( 
                                height: 7, 
                              )), 
                              Padding( 
                                  padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20), 
                                  child: Text( 
                                      bookModel.volumeInfo!.description==null ? 'No desc' : bookModel.volumeInfo!.description!, 
                                      maxLines: 3, 
                                      overflow: TextOverflow.ellipsis, 
                                      style: TextStyle( 
                                          color: Colors.white.withOpacity(0.5), 
                                          fontSize: 13))), 
                              const RatingPart(), 
                              Padding( 
                                padding:const EdgeInsets.only(top: 10), 
                                child: RowOfButtonActions(price: bookModel.saleInfo!.listPrice==null ? ' Free book' : '${bookModel.saleInfo!.listPrice!.amount} L.E',
                                onPressed: () async {
                                  try {
                                    var uri = Uri.parse(bookModel.volumeInfo!.previewLink!.toString());
                                    await launchUrl(uri,mode: LaunchMode.externalApplication);
                                    
                                  } catch (e) {
                                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Sorry , an error with browser..'),duration: Duration(seconds: 6),));
                                    
                                  }

                                },
                                 preview: bookModel.volumeInfo!.previewLink==null ? 'Not Availiable':'Free Preview' ,), 
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
                     )], 
                     
                   
                 
                ), 
         
             
          ), 
        ); 
       
     
  } 
}
