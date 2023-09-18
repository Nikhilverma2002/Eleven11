import 'package:flutter/material.dart';

goToNextPage({required BuildContext context, required Widget page}) {
  return Navigator.push(context, MaterialPageRoute(builder: (context) => page));
}

goOnlyNextPage({required BuildContext context, required Widget page}) {
  Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => page),
          (Route<dynamic> route) => false);
}
