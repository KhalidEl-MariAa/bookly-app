import 'package:bookly_app/faetures/book_details/presentation/view/widgets/button_action.dart';
import 'package:flutter/material.dart';

class RowOfButtonActions extends StatelessWidget {
  const RowOfButtonActions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ButtonAction(
          bkColor: Colors.white,
          text: '25.5 L.E',
          pressColor: Colors.amber,
          widthh: MediaQuery.of(context).size.width * 0.35,
          textcolor: Colors.black,
          borderRaduis: const BorderRadius.only(
              topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
        ),
        ButtonAction(
          bkColor: const Color.fromARGB(255, 255, 55, 55),
          text: 'Free Preview',
          widthh: MediaQuery.of(context).size.width * 0.35,
          textcolor: Colors.white,
          borderRaduis: const BorderRadius.only(
              topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
        )
      ],
    );
  }
}
