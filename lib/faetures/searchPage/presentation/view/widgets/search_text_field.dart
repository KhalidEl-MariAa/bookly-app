import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
        
        decoration:InputDecoration(

          suffixIcon: IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.magnifyingGlass,color: Colors.white.withOpacity(0.8),size: 20,)),
          hintText: 'Write book`s name',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
          disabledBorder: buildOutlineBorder() ,
          enabledBorder: buildOutlineBorder(),
          focusedBorder: buildOutlineBorder(),
          

        ) ,
        
       );
  }

  OutlineInputBorder buildOutlineBorder() => OutlineInputBorder(borderRadius: BorderRadius.circular(25),borderSide: const BorderSide(color: Colors.white));
}