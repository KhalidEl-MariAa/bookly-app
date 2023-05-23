import 'package:bookly_app/faetures/homepage/presentation/view/widgets/listviewElement.dart';
import 'package:flutter/material.dart';

class ListviewOfHomePage extends StatelessWidget {
  const ListviewOfHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, right: 20),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.24,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) => ListViewElement(
              height: MediaQuery.of(context).size.height * 0.23),
        ),
      ),
    );
  }
}
