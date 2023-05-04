import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';

class SearchPageBody extends StatelessWidget {
  const SearchPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: 
      Column(
        
        children: [
     IconButton(
      onPressed: 
        (() {
          GoRouter.of(context).pop();
        }),
      icon: const Icon(Icons.keyboard_return_outlined,))


      ],)),
    );
  }
}