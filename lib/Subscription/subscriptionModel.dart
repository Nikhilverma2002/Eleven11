
import 'dart:ui';

import 'package:flutter/cupertino.dart';

class MyHomePageModel {
  final String image;
  final String title;
  final List<String> desc;
  final Color color;
  final String price;
  final String line;

  MyHomePageModel(
      {required this.image,
        required this.title,
        required this.desc,
        required this.price,
        required this.line,
        required this.color});
}

