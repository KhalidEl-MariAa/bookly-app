import 'package:bookly_app/faetures/book_details/presentation/view/widgets/button_action.dart';
import 'package:flutter/material.dart';

class RowOfButtonActions extends StatelessWidget {
   const RowOfButtonActions({required this.price,this.onPressed,
    Key? key, required this.preview,
  }) : super(key: key);
  final String price;
 final void Function()? onPressed;
 final String preview;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ButtonAction(
          onPressed: () {
            
          },
          bkColor: Colors.white,
          text: price,
          pressColor: Colors.amber,
          widthh: MediaQuery.of(context).size.width * 0.35,
          textcolor: Colors.black,
          borderRaduis: const BorderRadius.only(
              topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
        ),
        ButtonAction(
          onPressed: onPressed ,
          bkColor: const Color.fromARGB(255, 255, 55, 55),
          text: preview,
          widthh: MediaQuery.of(context).size.width * 0.35,
          textcolor: Colors.white,
          borderRaduis: const BorderRadius.only(
              topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
        )
      ],
    );
  }
}
