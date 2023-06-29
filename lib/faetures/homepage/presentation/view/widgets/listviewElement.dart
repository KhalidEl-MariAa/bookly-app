import 'package:bookly_app/core/assets.dart';
import 'package:bookly_app/core/routing.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ListViewElement extends StatelessWidget {
  ListViewElement({super.key, required this.height,required this.imageURL});
  double height;
  String imageURL;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(Routes.bdroute);
      },
      child: Padding(
        padding: const EdgeInsets.all(7),
        child: SizedBox(
          height: height,
          child: AspectRatio(
            aspectRatio: 1 / 1.5,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.red,
                  image:  DecorationImage(
                    image: NetworkImage(imageURL),
                    fit: BoxFit.fill,
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
