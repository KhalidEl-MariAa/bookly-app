import 'package:bookly_app/faetures/homepage/presentation/view/homepage.dart';
import 'package:bookly_app/faetures/splashpage/presentation/views/splash_page.dart';
import 'package:go_router/go_router.dart';

abstract class Routes{

  static final router= GoRouter(
    routes: [
      GoRoute(
    path: Splashpage.splashRoute,
    builder: ((context, state) => const Splashpage())),
      GoRoute(
    path: HomePage.homeRoute,
    builder: (context, state) => const HomePage(),
      )]);
}