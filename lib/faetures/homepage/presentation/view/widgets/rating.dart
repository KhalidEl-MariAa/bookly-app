import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class Rating extends StatelessWidget {
  const Rating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
              children:  [
                 Text('25.75 L.E',style: GoogleFonts.adamina().copyWith(fontSize: 15,fontWeight: FontWeight.bold),),
                SizedBox(width: MediaQuery.of(context).size.width*0.22,),
                const Icon(Icons.star_rate,size: 15,),
                 SizedBox(width: MediaQuery.of(context).size.width*0.009),
                const Text('4.5',style: TextStyle(fontSize: 15,),)],
    );
  }
}