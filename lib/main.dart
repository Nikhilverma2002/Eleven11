import 'package:Eleven11/screens/SplashScreen.dart';
import 'package:Eleven11/screens/homepage.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: 'Eleven11',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.blue,
      /*colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,*/
    ),
    home: new SplashScreen(),
    routes: <String, WidgetBuilder>{
      '/SlideScreen': (BuildContext context) => new Homepage()
    },
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Eleven11',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        /*colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,*/
      ),
    );

  }

}

