import 'package:flutter/material.dart';
import 'package:newsapp/constant.dart';
import 'package:newsapp/view/screen/categoriesscreen.dart';

class ItemInCategories extends StatelessWidget {


  String categorytext;


  ItemInCategories({required this.categorytext});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(categorytext,style: TextStyle(color: black,fontSize: fontLarge)),
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
        return CategoriesScreens(categorytext);
      }));
    });
  }

}
