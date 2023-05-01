import 'package:bookly_app/faetures/book_details/presentation/view/book_details_page.dart';
import 'package:bookly_app/faetures/homepage/presentation/view/homepage.dart';
import 'package:bookly_app/faetures/splashpage/presentation/views/splash_page.dart';
import 'package:go_router/go_router.dart';

abstract class Routes{
  static String bdroute = '/bookdetailsroute';
  static String splashRoute = '/';
  static String homeRoute= '/homepage';



  static final router= GoRouter(
    routes: [
      GoRoute(
    path: splashRoute,
    builder: ((context, state) => const Splashpage())),
      GoRoute(
    path: homeRoute,
    builder: (context, state) => const HomePage(),
      ),
      GoRoute(path: bdroute,
      builder: (context, state) => const BookDetailsPage(),),
      ]);
}