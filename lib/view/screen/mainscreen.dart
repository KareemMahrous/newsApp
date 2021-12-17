import 'package:flutter/material.dart';
import 'package:newsapp/constant.dart';
import 'package:newsapp/controller/APIData.dart';
import 'package:newsapp/view/widgets/buttoncategories.dart';
import 'package:newsapp/view/widgets/topicscards.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: mintGreen,
          elevation: 0,
          title: const Text(
            "News",
            style: TextStyle(
                color: white, fontSize: fontTitle, fontWeight: FontWeight.w800),
          ),
          centerTitle: true,
          //action for exit button icon
          //needs implementation
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.exit_to_app,
                color: white,
              ),
            ),
          ],
        ),
        drawer: Drawer(
            child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: mintGreen),
              child: Text(
                "Categories",
                style: TextStyle(
                    fontSize: 40, color: white, fontWeight: FontWeight.w800),
                textAlign: TextAlign.center,
              ),
            ),
            ItemInCategories(categorytext: "General"),
            ItemInCategories(categorytext: "Business"),
            ItemInCategories(categorytext: "Entertainment"),
            ItemInCategories(categorytext: "Health"),
            ItemInCategories(categorytext: "Sports"),
            ItemInCategories(categorytext: "Technology"),
            ItemInCategories(categorytext: "Science"),
          ],
        )),
        body: Column(
          children: [
            Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.all(10.0),
                child: const Text(
                  "Top News",
                  style: TextStyle(
                      color: black,
                      fontSize: fontLarge,
                      fontWeight: FontWeight.w600),
                )),
            Expanded(
              child: FutureBuilder(
                future: APIData.getnews(),
                builder:
                    (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                  return (snapshot.data == null)
                      ? const Text("")
                      : ListView.builder(
                          itemCount: snapshot.data.length,
                          itemBuilder: (BuildContext context, int index) {
                            return TopicsInCards(
                              topictitle: "${snapshot.data[index].title}",
                              topicimage: "${snapshot.data[index].urlToImage}", topiclink: '${snapshot.data[index].url}',
                            );
                          },
                        );
                },
              ),
            ),
          ],
        ));
  }
}
