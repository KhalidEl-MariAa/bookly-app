import 'package:bookly_app/core/assets.dart';
import 'package:bookly_app/core/routing.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

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
   style: TextStyle(fontWeight:FontWeight.w900 ,fontSize: 10,fontFamily: 'Poppins'),
   textAlign: TextAlign.center)],

        ),
        const Spacer(),
        IconButton(onPressed: (){
          GoRouter.of(context).push(Routes.searchRoute);
        }, icon: const Icon(FontAwesomeIcons.magnifyingGlass))],
      ),
    );
  }
}