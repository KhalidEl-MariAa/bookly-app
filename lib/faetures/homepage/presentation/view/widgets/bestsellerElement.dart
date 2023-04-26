import 'package:flutter/material.dart';

import '../../../../../core/assets.dart';
import 'package:google_fonts/google_fonts.dart';
class BestSellerElement extends StatelessWidget {
    const BestSellerElement({super.key});



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only (left:8.0),
      child: Row(
        
        children: [Container(
          height: MediaQuery.of(context).size.height*0.15,
          width: MediaQuery.of(context).size.width*0.25,
          decoration: BoxDecoration(image:const DecorationImage(
            image:  AssetImage(Assets.book1,
            
          ),
          fit: BoxFit.fill
          ),borderRadius: BorderRadius.circular(13)),
          
        ),
       const SizedBox(width: 30),
      Expanded
      (child: Padding(
        padding: const EdgeInsets.only(right:8.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start
          ,children: [ Text('Book Title',style: GoogleFonts.adamina(
          ),)
          ,Text('Book Description : What are the topics that the book discuss',style: TextStyle(color: Colors.white.withOpacity(0.5)),)
          , Padding(
            padding: const EdgeInsets.only(top:9.0),
            child: Row(
              children:const  [
                Text('25.75 L.E'),
                SizedBox(width: 130,),
                Icon(Icons.star,size: 15,),
                SizedBox(width: 5),
                Text('4.5')],
            ),
          )],),))  
          ,],
      ),
    );
  }
}