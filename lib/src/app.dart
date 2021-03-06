import 'package:flutter/material.dart';

import 'package:flutter_prototype/src/home_screen.dart';
import 'package:flutter_prototype/src/pages/drawer_pages/drawer_screen.dart';
import 'package:flutter_prototype/src/pages/login_pages/login_Screen.dart';

class MyApp extends StatelessWidget {
  // Widget para el inicio de la aplicación
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            LoginScreen(),
            DrawerScreen(),
            HomeScreen(),
          ],
        ),
      ),
    );
  }
}