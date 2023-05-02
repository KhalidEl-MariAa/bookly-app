import 'package:bookly_app/core/assets.dart';
import 'package:bookly_app/core/routing.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ListViewElement extends StatelessWidget {
   ListViewElement({super.key,required this.height});
  double height;
  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(Routes.bdroute);
      },
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: SizedBox(
          height: height,
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
      ),
    );
  }
}