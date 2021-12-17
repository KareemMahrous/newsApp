import 'package:flutter/material.dart';
import 'package:newsapp/constant.dart';

class ItemInCategories extends StatelessWidget {


  String categorytext;

  ItemInCategories({required this.categorytext});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(categorytext,style: TextStyle(color: black,fontSize: fontLarge)),
    onTap: () {
      Navigator.pop(context);
    });
  }

}
