import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/routing.dart';
import 'package:bookly_app/faetures/splashpage/presentation/views/splash_page.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const Booklyapp());
}

class Booklyapp extends StatelessWidget {
  const Booklyapp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      routerConfig: Routes.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark,fontFamily: 'Poppins').copyWith(scaffoldBackgroundColor: kpcolor),
    
      
          );
      }
}
