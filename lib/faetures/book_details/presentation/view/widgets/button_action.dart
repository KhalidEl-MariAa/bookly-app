// ignore: must_be_immutable
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonAction extends StatelessWidget {
  ButtonAction(
      {Key? key,
      this.borderRaduis,
      required this.text,
      required this.textcolor,
      required this.bkColor,
      this.widthh,
      this.pressColor})
      : super(key: key);

  BorderRadiusGeometry? borderRaduis;
  String text;
  Color textcolor;
  Color bkColor;
  double? widthh;
  Color? pressColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: widthh,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            foregroundColor: pressColor,
            backgroundColor: bkColor,
            shape: RoundedRectangleBorder(
                borderRadius: borderRaduis ?? BorderRadius.circular(12))),
        child: Text(text,
            style: GoogleFonts.adamina().copyWith(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: textcolor,
            )),
      ),
    );
  }
}
