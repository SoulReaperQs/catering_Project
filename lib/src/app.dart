import 'package:flutter/material.dart';

import 'package:flutter_prototype/src/pages/sreen_page.dart';



class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Oswald',
        scaffoldBackgroundColor: Colors.white,
      ),
      home: Scaffold(
        body:Container(child: ScreenPage())),
    ); 
  }
}
