import 'package:bookly_app/faetures/mainpage/presentation/views/main_page_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Mainpage extends StatelessWidget {
  const Mainpage({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: MainPageBody(),
    );
  }
}