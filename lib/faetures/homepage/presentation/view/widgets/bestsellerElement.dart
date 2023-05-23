import 'dart:ui';

import 'package:bookly_app/core/routing.dart';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/assets.dart';
import 'package:google_fonts/google_fonts.dart';

class BestSellerElement extends StatelessWidget {
  const BestSellerElement({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        GoRouter.of(context).push(Routes.bdroute);
      }),
      child: Row(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.20,
            child: AspectRatio(
              aspectRatio: 1.5 / 2,
              child: Container(
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage(
                          Assets.book1,
                        ),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(13)),
              ),
            ),
          ),
          const SizedBox(width: 30),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Book Title',
                  style: GoogleFonts.adamina().copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 7.0),
                    child: Text(
                        'Book Description : What are the topics that the book discuss',
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontSize: 13))),
                Padding(
                    padding: const EdgeInsets.only(top: 7.0),
                    child: Row(
                      children: [
                        Text(
                          '25.75 L.E',
                          style: GoogleFonts.adamina().copyWith(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.22,
                        ),
                        const Icon(
                          Icons.star_rate,
                          size: 15,
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.009),
                        const Text(
                          '4.5',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        )
                      ],
                    ))
              ],
            ),
          )),
        ],
      ),
    );
  }
}
