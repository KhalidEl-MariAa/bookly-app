import 'package:bookly_app/faetures/mainpage/presentation/views/main_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' ;

void main() {
  runApp(const Booklyapp());
}

class Booklyapp extends StatelessWidget {
  const Booklyapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
    home: Mainpage(),
      
          );
      }
}