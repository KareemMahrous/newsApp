import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:newsapp/model/newsdataforcards.dart';

class APIData {
  static String APIKey = "eedbcce7b83d4bbc9407c018e1164154";
  static getnews () async {
    List<NewsDataforCards> newsdata = [];
    var url = Uri.parse("https://newsapi.org/v2/top-headlines?country=us&apiKey=$APIKey");
    var response = await http.get(url);
    var responseBody = jsonDecode(response.body)["articles"];

    for(var x in responseBody)
      {
        newsdata.add(NewsDataforCards(title: x["title"], description: x["description"], url: x["url"], urlToImage: x["urlToImage"]));
      }
    return newsdata;
  }
}