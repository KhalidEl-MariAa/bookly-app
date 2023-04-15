import 'dart:ui';

import 'package:flutter/material.dart';

class SplashPageBody extends StatelessWidget {
  const SplashPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [Image.asset('assets/logo.jpg',width: 50,height: 50,),
     const Center(child:  Text('Bookly App',style: TextStyle(fontWeight:FontWeight.w900 ,color: Colors.white)))],
    );
  }
}