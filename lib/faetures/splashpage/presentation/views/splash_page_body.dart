import 'dart:ui';

import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';

class SplashPageBody extends StatelessWidget {
  const SplashPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      
      children: [Image.asset('assets/boook.png',width: 200,height: 200,),
      const SizedBox(height: 25,),
     const Center(child:  Text('Bookly App',style: TextStyle(fontWeight:FontWeight.w900 ,color: Colors.white,fontSize: 23))),
     const SizedBox(height: 50,),
    const CircularProgressIndicator(color: Colors.white,strokeWidth: 7,backgroundColor: Color.fromARGB(255, 240, 78, 66),)],
    );
  }
}