import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/reusable.dart';
import 'package:bookly_app/core/routing.dart';
import 'package:bookly_app/faetures/book_details/presentation/view/book_details_page.dart';
import 'package:bookly_app/faetures/homepage/data/repostries/home_repo_impl.dart';
import 'package:bookly_app/faetures/homepage/presentation/view/homepage.dart';
import 'package:bookly_app/faetures/homepage/presentation/view_model/bestseller_cubit/cubit/best_seller_cubit.dart';
import 'package:bookly_app/faetures/homepage/presentation/view_model/listviewBooks_cubit/cubit/list_view_books_cubit.dart';
import 'package:bookly_app/faetures/searchPage/presentation/view/searchPage.dart';
import 'package:bookly_app/faetures/splashpage/presentation/views/splash_page.dart';


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



void main() async {
   WidgetsFlutterBinding.ensureInitialized();
   setup();
  runApp(const Booklyapp());
}

class Booklyapp extends StatelessWidget {
  const Booklyapp({super.key});

  @override
  Widget build(BuildContext context) {
    return 
      MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => BestSellerCubit(getit.get<HomeRepoImpl>())..fetchBestSellerBooks(),
          ),
          BlocProvider(
            create: (context) => ListViewBooksCubit(getit.get<HomeRepoImpl>())..fetchListViewBooks(),
          ),
        ],
        child: MaterialApp(
        routes: {Routes.homeRoute:(context) => const HomePage(),
                 Routes.splashRoute:(context) => const Splashpage(),
                 Routes.bdroute:(context) => const BookDetailsPage(),
                 Routes.searchRoute:(context) => const SearchPage()},
        initialRoute: Routes.splashRoute,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins')
            .copyWith(scaffoldBackgroundColor: kpcolor),
          ),
      );
  }
}
