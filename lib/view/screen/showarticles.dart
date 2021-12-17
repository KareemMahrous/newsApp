import 'package:flutter/material.dart';
import 'package:newsapp/constant.dart';
import 'package:newsapp/controller/APIData.dart';

class ShowArticles extends StatefulWidget {
  @override
  _ShowArticlesState createState() => _ShowArticlesState();
}

class _ShowArticlesState extends State<ShowArticles> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Expanded(
        child: FutureBuilder(
          future: APIData.getnews(),
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            return ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "${snapshot.data[index].title}",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: fontXLarge,
                            color: black),
                      ),
                    ),
                    Image.network(
                      "${snapshot.data[index].urlToImage}",
                      width: double.infinity,
                      height: 200,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "${snapshot.data[index].description}",
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: fontLarge, color: black),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "${snapshot.data[index].content}",
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: fontSubTitle, color: black),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "By ${snapshot.data[index].author}",
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: fontSmaller,color: black),
                      ),
                    )
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
