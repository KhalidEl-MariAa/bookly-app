import 'package:bookly_app/core/assets.dart';
import 'package:flutter/material.dart';

class ListViewElement extends StatelessWidget {
  const ListViewElement({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: SizedBox(
        height: MediaQuery.of(context).size.height*0.23,
        child: AspectRatio(
          aspectRatio: 1/1.5,
          child: Container(
            
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.red,
              image: const DecorationImage(image: AssetImage(Assets.book1),
              fit: BoxFit.fill
              ,)
            ),
          ),
        ),
      ),
    );
  }
}