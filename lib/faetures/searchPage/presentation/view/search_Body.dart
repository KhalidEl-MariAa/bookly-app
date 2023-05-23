import 'package:bookly_app/faetures/searchPage/presentation/view/widgets/searchResultsListView.dart';
import 'package:bookly_app/faetures/searchPage/presentation/view/widgets/search_text_field.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

class SearchPageBody extends StatelessWidget {
  const SearchPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
              onPressed: (() {
                GoRouter.of(context).pop();
              }),
              icon: const Icon(
                Icons.keyboard_return_outlined,
              )),
          const SizedBox(
            height: 12,
          ),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: SearchTextField()),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text('Search Results'),
          ),
          const Expanded(
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: SearchListView()))
        ],
      )),
    );
  }
}
