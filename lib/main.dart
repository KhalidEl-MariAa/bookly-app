import 'package:bookly_app/constants.dart';
import 'package:bookly_app/faetures/splashpage/presentation/views/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' ;

void main() {
  runApp(const Booklyapp());
}

class Booklyapp extends StatelessWidget {
  const Booklyapp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark,).copyWith(scaffoldBackgroundColor: kpcolor),
    home: const Splashpage(),
      
          );
      }
}
