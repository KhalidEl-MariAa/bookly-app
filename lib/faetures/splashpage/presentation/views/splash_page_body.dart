import 'dart:ui';

import 'package:bookly_app/constants.dart';
import 'package:bookly_app/faetures/splashpage/presentation/views/widgets/animation_refactor.dart';
import 'package:flutter/material.dart';

class SplashPageBody extends StatefulWidget {
  const SplashPageBody({super.key});

  @override
  State<SplashPageBody> createState() => _SplashPageBodyState();
}

class _SplashPageBodyState extends State<SplashPageBody> with TickerProviderStateMixin {
  late AnimationController aanimationController;
  late Animation<Offset> sliding;

  @override
  void initState() {
    // TODO: implement initState
    aanimationController=AnimationController(vsync: this,duration:const Duration(seconds: 5));
    sliding=Tween<Offset>(begin: const Offset(0,5),end: Offset.zero).animate(aanimationController);
    aanimationController.forward();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      
      children: [Image.asset('assets/boook.png',width: 200,height: 200,),
      const SizedBox(height: 25,),
     SlidingAnimationWithBuilder(sliding: sliding,child: const Text('Bookly App',style: TextStyle(fontWeight:FontWeight.w900 ,fontSize: 23,),textAlign: TextAlign.center),),
     const SizedBox(height: 50,),
   SlidingAnimationWithBuilder(sliding: sliding, child: const Center(child: CircularProgressIndicator(color: Colors.white,strokeWidth: 7,backgroundColor: Color.fromARGB(255, 240, 78, 66),)))],
    );
  }
}

