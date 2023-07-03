

import 'package:bookly_app/core/routing.dart';
import 'package:bookly_app/faetures/homepage/data/models/book_model/book_model.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import 'package:google_fonts/google_fonts.dart';

class BestSellerElement extends StatelessWidget {
   BestSellerElement({super.key,required this.bookmodel});
  final BookModel bookmodel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        GoRouter.of(context).push(Routes.bdroute,extra: bookmodel);
      }),
      child:  Row(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.20,
              child: AspectRatio(
                aspectRatio: 1.5 / 2,
                child: CachedNetworkImage(
                  imageUrl: bookmodel.volumeInfo!.imageLinks!.thumbnail!,
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                )
              ),
            ),
            const SizedBox(width: 21),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    bookmodel.volumeInfo!.title!,
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
                          bookmodel.volumeInfo!.description==null ? 'No desc' : bookmodel.volumeInfo!.description! ,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              fontSize: 13))),
                  Padding(
                      padding: const EdgeInsets.only(top: 7.0),
                      child:  Row(
                          
                          children: [
                            Text(
                               bookmodel.saleInfo!.listPrice==null ? ' Free book' : '${bookmodel.saleInfo!.listPrice!.amount}',
                              style: GoogleFonts.adamina().copyWith(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.22,
                            ),
                            const Icon(
                              Icons.star_rate,
                              size: 15,
                              color: Colors.amber,
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
                        ),
                      )
                ],
              ),
            )),
          ],
        ),
      )
    ;
  }
}
