import 'package:dio/dio.dart';

class APIService{

  final String baseURL= 'https://www.googleapis.com/books/v1/';
  

  Future<Map<String,dynamic>> get({required String endpoint})async{
   var response =await Dio().get("$baseURL$endpoint");
   return response.data;
  }
}