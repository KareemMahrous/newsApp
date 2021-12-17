import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';

class Func{
  static copylink(String link){
    FlutterClipboard.copy('$link');
    print('Shared: $link');
  }
  static sharelink(String link){
    Share.share('News: $link');
    print('Coppied: $link');
  }
}