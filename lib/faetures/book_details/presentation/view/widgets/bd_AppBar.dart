import 'package:flutter/material.dart';

class BookDetailsAppBar extends StatelessWidget {
  const BookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      IconButton(onPressed: (){},
      iconSize: 27,
       icon: const Icon(Icons.highlight_remove)),
      const Spacer(),
       IconButton(onPressed: (){},
       iconSize: 27,
       icon: const Icon(Icons.shopping_cart_outlined))


    ],);
  }
}