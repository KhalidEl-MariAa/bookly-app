import 'package:bookly_app/faetures/homepage/presentation/view/widgets/bestsellerElement.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.only(right: 8.0, left: 8, bottom: 5, top: 15),
        child: BestSellerElement(),
      ),
      itemCount: 10,
    );
  }
}
