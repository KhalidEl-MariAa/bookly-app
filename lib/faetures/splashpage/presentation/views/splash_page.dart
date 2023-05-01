import 'package:bookly_app/faetures/splashpage/presentation/views/splash_page_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Splashpage extends StatelessWidget {
  const Splashpage({super.key});
  static String splashRoute = '/';

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: SplashPageBody(),
    );
  }
}