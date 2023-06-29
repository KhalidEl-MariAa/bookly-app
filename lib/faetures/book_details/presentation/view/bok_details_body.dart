import 'package:bookly_app/faetures/book_details/presentation/view/widgets/bd_AppBar.dart';
import 'package:bookly_app/faetures/book_details/presentation/view/widgets/bd_buttonRow.dart';
import 'package:bookly_app/faetures/book_details/presentation/view/widgets/bd_rating.dart';
import 'package:bookly_app/faetures/homepage/presentation/view/widgets/listview.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../homepage/presentation/view/widgets/listviewElement.dart';

class BookDetailsPageBody extends StatelessWidget {
  const BookDetailsPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(slivers: [
          SliverFillRemaining(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(13),
                  child: BookDetailsAppBar(),
                ),
                ListViewElement(
                  imageURL: 'https://www.bing.com/images/search?view=detailV2&ccid=rnWvsFOK&id=2BC92A8266059B4433B57F91FCA50DADB16E2EB8&thid=OIP.rnWvsFOKA0x9mRkq3EYZ1QHaEK&mediaurl=https%3a%2f%2fi.ytimg.com%2fvi%2fGHna7XsxRhI%2fmaxresdefault.jpg&cdnurl=https%3a%2f%2fth.bing.com%2fth%2fid%2fR.ae75afb0538a034c7d99192adc4619d5%3frik%3duC5usa0NpfyRfw%26pid%3dImgRaw%26r%3d0&exph=720&expw=1280&q=image+path+on+colab&simid=608029642905893436&FORM=IRPRST&ck=D27B2A383D3350189819C03B30C1726B&selectedIndex=5',
                  height: MediaQuery.of(context).size.height * 0.28,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 32),
                  child: Text('The Book Title ',
                      style: GoogleFonts.adamina()
                          .copyWith(fontSize: 19, fontWeight: FontWeight.bold)),
                ),
                const Expanded(
                    child: SizedBox(
                  height: 7,
                )),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                        'Book Description : What are the topics that the book discuss',
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontSize: 13))),
                const RatingPart(),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: RowOfButtonActions(),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 30, top: 30),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'You may also like',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: ListviewOfHomePage(),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
