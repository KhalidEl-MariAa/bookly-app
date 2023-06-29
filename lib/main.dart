import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/reusable.dart';
import 'package:bookly_app/core/routing.dart';
import 'package:bookly_app/faetures/homepage/data/repostries/home_repo_impl.dart';
import 'package:bookly_app/faetures/homepage/presentation/view_model/bestseller_cubit/cubit/best_seller_cubit.dart';
import 'package:bookly_app/faetures/homepage/presentation/view_model/listviewBooks_cubit/cubit/list_view_books_cubit.dart';


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
            create: (context) => BestSellerCubit(getit.get<HomeRepoImpl>()),
          ),
          BlocProvider(
            create: (context) => ListViewBooksCubit(getit.get<HomeRepoImpl>())..fetchListViewBooks(),
          ),
        ],
        child: MaterialApp.router(
        routerConfig: Routes.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins')
            .copyWith(scaffoldBackgroundColor: kpcolor),
          ),
      );
  }
}
