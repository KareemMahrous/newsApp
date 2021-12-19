import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';

class Func{
  static copylink(String link)async{
    FlutterClipboard.copy('$link');
    print('Coppied: $link');
  }
  static sharelink(String link){
    Share.share('News: $link');
    print('Shared: $link');
  }
}