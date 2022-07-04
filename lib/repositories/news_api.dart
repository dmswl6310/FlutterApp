import 'dart:convert';

import '../models/news.dart';
import 'package:http/http.dart' as http;

 class NewsApi{
  static String apiUri=
      'https://newsapi.org/v2/everything?q=keyword&apiKey=';
  static String apiKey='74f2302672db4b9a9331255b116d75ea';

  Uri uri=Uri.parse(apiUri+apiKey);

  Future<List<News>> getNews() async{
   List<News> news=[];
   final response=await http.get(uri);
   final statusCode=response.statusCode;
   final body=response.body;

   if(statusCode==200){
    news=jsonDecode(body)['articles'].map<News>((article){
     return News.fromMap(article);
    }).toList();
   }
   return news;
 }
 }