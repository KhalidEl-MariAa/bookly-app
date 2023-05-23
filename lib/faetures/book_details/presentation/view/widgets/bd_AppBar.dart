import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookDetailsAppBar extends StatelessWidget {
  const BookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            iconSize: 27,
            icon: const Icon(Icons.highlight_remove)),
        const Spacer(),
        IconButton(
            onPressed: () {},
            iconSize: 27,
            icon: const Icon(Icons.shopping_cart_outlined))
      ],
    );
  }
}
