import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/constant.dart';
import 'package:share/share.dart';

class TopicsInCards extends StatelessWidget {
  String topictitle;
  var topicimage;
  String topiclink;

  TopicsInCards({required this.topictitle, required this.topicimage,required this.topiclink});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.push(context, route);
      },
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
        elevation: 100,
        color: white,
        shadowColor: mintGreen,
        child: Column(
          children: [
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
                      image: (topicimage == null)
                          ? const NetworkImage(
                              "https://bitsofco.de/content/images/2018/12/broken-1.png")
                          : NetworkImage(topicimage))),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  topictitle,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: black, fontSize: fontLarge),
                ),
              ),
              alignment: Alignment.topCenter,
              width: MediaQuery.of(context).size.width * 90,
            ),
            Container(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Share.share('$topiclink');
                      print('Coppied: $topiclink');
                    },
                    icon: const Icon(
                      Icons.share,
                      color: black,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      FlutterClipboard.copy('$topiclink');
                      print('Coppied: $topiclink');
                    },
                    icon: const Icon(
                      Icons.copy,
                      color: black,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
