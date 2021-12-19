import 'package:flutter/material.dart';
import 'package:newsapp/constant.dart';
import 'package:newsapp/controller/APIData.dart';
import 'package:newsapp/view/screen/categoriesscreen.dart';

class ShowArticles extends StatefulWidget {
  String topictitle;
  var topicimage;
  String topiclink;
  String description;
  String content;
  // String cat = ;

  ShowArticles(this.topictitle, this.topicimage, this.topiclink,this.description,this.content);

  @override
  _ShowArticlesState createState() => _ShowArticlesState();
}

class _ShowArticlesState extends State<ShowArticles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Column(children: [
      Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Text(
          widget.topictitle,
          textAlign: TextAlign.start,
          style: const TextStyle(
              fontWeight: FontWeight.w800, fontSize: fontXLarge, color: black),
        ),
      ),
      // (widget.topicimage == null)
      //     ? Image.network(
      //         "https://bitsofco.de/content/images/2018/12/broken-1.png")
      //     : Image.network(
      //         "${widget.topicimage.urlToImage}",
      //         width: double.infinity,
      //         height: 200,
      //       ),
          Container(
            padding: const EdgeInsets.all(5.0),
            height: 200,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: (widget.topicimage == null)
                        ? const NetworkImage(
                        "https://bitsofco.de/content/images/2018/12/broken-1.png")
                        : NetworkImage(widget.topicimage))),
          ),
    Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          widget.description,
          textAlign: TextAlign.start,
          style: const TextStyle(fontSize: fontLarge, color: black),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          widget.content,
          textAlign: TextAlign.start,
          style: const TextStyle(fontSize: fontSubTitle, color: black),
        ),
      ),
    ])
        //     FutureBuilder(
        //       future: APIData.getnews(),
        //       builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        //         return (snapshot.data == null)
        //             ? const Text("")
        //             : ListView.builder(
        //                 itemCount: snapshot.data.length,
        //                 itemBuilder: (BuildContext context, int index) {
        //                   return Column(
        //                     children: [
        //                       Padding(
        //                         padding: const EdgeInsets.all(8.0),
        //                         child: Text(
        //                           "${snapshot.data[index].title}",
        //                           textAlign: TextAlign.start,
        //                           style: const TextStyle(
        //                               fontWeight: FontWeight.w800,
        //                               fontSize: fontXLarge,
        //                               color: black),
        //                         ),
        //                       ),
        //                       (snapshot.data[index].url == "null")
        //                           ? Image.network(
        //                               "https://bitsofco.de/content/images/2018/12/broken-1.png")
        //                           : Image.network(
        //                               "${snapshot.data[index].urlToImage}",
        //                               width: double.infinity,
        //                               height: 200,
        //                             ),
        //                       Padding(
        //                         padding: const EdgeInsets.all(8.0),
        //                         child: Text(
        //                           "${snapshot.data[index].description}",
        //                           textAlign: TextAlign.start,
        //                           style: const TextStyle(
        //                               fontSize: fontLarge, color: black),
        //                         ),
        //                       ),
        //                       Padding(
        //                         padding: const EdgeInsets.all(8.0),
        //                         child: Text(
        //                           "${snapshot.data[index].content}",
        //                           textAlign: TextAlign.start,
        //                           style: const TextStyle(
        //                               fontSize: fontSubTitle, color: black),
        //                         ),
        //                       ),
        //                       Container(padding: const EdgeInsets.only(left: 8.0),
        //                         alignment: Alignment.bottomLeft,
        //                         child: Text(
        //                           "By ${snapshot.data[index].author}",
        //                           textAlign: TextAlign.start,
        //                           style: const TextStyle(
        //                               fontSize: fontSmaller, color: black),
        //                         ),
        //                       )
        //                     ],
        //                   );
        //                 },
        //               );
        //       },
        //     ),

        );
  }
}
