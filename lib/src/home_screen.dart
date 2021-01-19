import 'package:flutter/material.dart';
import 'package:flutter_prototype/src/widget/widget_drawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffset = 0;
  double yOffset = 0;

  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(isDrawerOpen ? 0.85 : 1.00)
        ..rotateZ(isDrawerOpen ? -50 : 0),
      duration: Duration(milliseconds: 200),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius:
            isDrawerOpen ? BorderRadius.circular(40) : BorderRadius.circular(0),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  isDrawerOpen
                      ? GestureDetector(
                          child: Icon(Icons.arrow_back_ios),
                          onTap: () {
                            setState(() {
                              xOffset = 0;
                              yOffset = 0;
                              isDrawerOpen = false;
                            });
                          },
                        )
                      : GestureDetector(
                          child: Icon(Icons.menu, color:Colors.white),
                          onTap: () {
                            setState(() {
                              xOffset = 290;
                              yOffset = 80;
                              isDrawerOpen = true;
                            });
                          },
                        ),
                  Text(
                    'GÚSTO & MÁS',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        decoration: TextDecoration.none),
                  ),
                  Container(
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Column(
              children: <Widget>[
                NewPadding(
                  image1: 'assets/images/arroz.png',
                  text1: 'Porción de Arroz Blanco',
                  image2: 'assets/images/tallarines.png',
                  text2: 'Tallarin Saltado',
                ),
                SizedBox(
                  height: 40,
                ),
                NewPadding(
                  image1: 'assets/images/arroz.png',
                  text1: 'Porción de Arroz Blanco',
                  image2: 'assets/images/tallarines.png',
                  text2: 'Tallarin Saltado',
                ),
                SizedBox(
                  height: 40,
                ),
                                NewPadding(
                  image1: 'assets/images/arroz.png',
                  text1: 'Porción de Arroz Blanco',
                  image2: 'assets/images/tallarines.png',
                  text2: 'Tallarin Saltado',
                ),
                SizedBox(
                  height: 40,
                ),
                NewPadding(
                  image1: 'assets/images/arroz.png',
                  text1: 'Porción de Arroz Blanco',
                  image2: 'assets/images/tallarines.png',
                  text2: 'Tallarin Saltado',
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
