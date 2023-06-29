import 'package:dio/dio.dart';


abstract class Failures{
  final String errorMessage;

  Failures(this.errorMessage);
}

class ServerFailure extends Failures{
  ServerFailure(super.errorMessage);
  
  factory ServerFailure.fromDioError (DioException dioException){
    switch (dioException.type) {
    
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Sorry for that , connection has been timed out try later!');
        
      case DioExceptionType.sendTimeout:
       return ServerFailure('Sorry for that , send has been timed out try later!');

      case DioExceptionType.receiveTimeout:
        return ServerFailure('Sorry for that , Receive has been timed out try later!');

      case DioExceptionType.badCertificate:
       return ServerFailure('Sorry for that , You aren`t allowed to see this!');

      case DioExceptionType.badResponse:
       return ServerFailure.fromResponse(dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Sorry for that , the request is cancelled try later!');

      case DioExceptionType.connectionError:
       return ServerFailure('Sorry for that , check your connection and try again');

      case DioExceptionType.unknown:
        return ServerFailure('Sorry for that , there was an error try later!');

      default:
       return ServerFailure('Sorry for that , there was an error try later!');




    }}


    factory ServerFailure.fromResponse(int statuscode,dynamic response){

      if (statuscode==400 || statuscode==401 || statuscode==402) {
        return ServerFailure(response["error"]["message"].toString());
        
      }
       else if(statuscode==404){
        return ServerFailure('Your request not dound , please try later!');

      }

       else if(statuscode==500){
        return ServerFailure('Internal server error , please try again!');

      }
      else{
      return ServerFailure('Unexpected error... try again!');
      }
    }

}