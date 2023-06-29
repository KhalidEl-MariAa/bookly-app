import 'package:bookly_app/core/api_service.dart';
import 'package:bookly_app/faetures/homepage/data/repostries/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getit= GetIt.instance;

void setup()async{
  getit.registerSingleton<APIService>(APIService(Dio()));  

  getit.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
     getit.get<APIService>()
        )
        ); 

      
  

}