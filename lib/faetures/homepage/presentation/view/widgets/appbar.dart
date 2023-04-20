import 'package:bookly_app/core/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 20),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        
        children: [Column(children: [Image.asset(Assets.logo,height: 50,),
   const Text('Bookly App',
   style: TextStyle(fontWeight:FontWeight.w900 ,fontSize: 10,),
   textAlign: TextAlign.center)],

        ),
        const Spacer(),
        IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.magnifyingGlass))],
      ),
    );
  }
}