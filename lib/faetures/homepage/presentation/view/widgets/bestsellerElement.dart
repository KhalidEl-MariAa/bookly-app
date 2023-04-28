import 'package:flutter/material.dart';

import '../../../../../core/assets.dart';
import 'package:google_fonts/google_fonts.dart';
class BestSellerElement extends StatelessWidget {
    const BestSellerElement({super.key});



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only (right: 8,left: 8,bottom: 20),
      child: Row(
        
        children: [SizedBox(
          height: MediaQuery.of(context).size.height*0.20 ,
          child: AspectRatio(
            aspectRatio:1.5/2 ,
            child: Container(
              
              decoration: BoxDecoration(image:const DecorationImage(
                image:  AssetImage(Assets.book1,
                
              ),
              fit: BoxFit.fill
              ),borderRadius: BorderRadius.circular(13)),
              
            ),
          ),
        ),
       const SizedBox(width: 30),
      Expanded
      (child: Padding(
        padding: const EdgeInsets.only(right:8.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start
          ,children: [ Text('Book Title',style: GoogleFonts.adamina(
          ).copyWith(fontSize: 15),maxLines: 2, overflow: TextOverflow.ellipsis,)
          ,Padding(
            padding: const EdgeInsets.only(top:7.0),
            child: Text('Book Description : What are the topics that the book discuss',
            maxLines: 3,
            overflow: TextOverflow.ellipsis
            ,style: TextStyle(color: Colors.white.withOpacity(0.5)),),
          )
          , Padding(
            padding: const EdgeInsets.only(top:7.0),
            child: Row(
              children:  [
                const Text('25.75 L.E',style: TextStyle(fontSize: 16),),
                SizedBox(width: MediaQuery.of(context).size.width*0.22,),
                const Icon(Icons.star,size: 15,),
                 SizedBox(width: MediaQuery.of(context).size.width*0.009),
                const Text('4.5')],
            ),
          )],),))  
          ,],
      ),
    );
  }
}