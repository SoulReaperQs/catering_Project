import 'package:flutter/material.dart';

class ScreenPage extends StatefulWidget {
  ScreenPage({Key key}) : super(key: key);

  @override
  _ScreenPageState createState() => _ScreenPageState();
}

class _ScreenPageState extends State<ScreenPage> {
  int _pageState = 0;
  //Cambia el color de fondo
  var _backgroundColor = Colors.white;
  //Cambia color de la letra
  var _headingColor = Colors.white;

  double _loginOffset = 0;

  double windowHeight = 0;
  double windowWidth = 0;

  /*Cambia de imagen
  var _changeImage;
  */
  @override
  Widget build(BuildContext context) {
    windowHeight = MediaQuery.of(context).size.height;
    windowWidth = MediaQuery.of(context).size.width;

    switch (_pageState) {
      case 0:
        _backgroundColor = Colors.white;
        _headingColor = Colors.red;

        _loginOffset = windowHeight;
        break;
      case 1:
        _backgroundColor = Colors.redAccent;
        _headingColor = Colors.white;

        _loginOffset = 370;
        break;
      case 2:
        _backgroundColor = Colors.redAccent;
        _headingColor = Colors.white;

        _loginOffset = 350;
        break;
    }

    return Stack(
      children: [
        AnimatedContainer(
          curve: Curves.fastLinearToSlowEaseIn,
          duration: Duration(
            milliseconds: 1000,
          ),
          child: Container(
            color: _backgroundColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //TEXTO
                Container(
                  child: Column(
                    children: [
                      Container(
                          margin: const EdgeInsets.only(top: 100),
                          child: Text('GUSTÓ & MÁS',
                              style: TextStyle(
                                  color: _headingColor, fontSize: 40))),
                      Container(
                          margin: EdgeInsets.all(20),
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                              'La cocina de autor es poner tu personalidad en lo que haces y ese sentimiento la convierte en algo distinto',
                              style: TextStyle(
                                  color: _headingColor, fontSize: 15)))
                    ],
                  ),
                ),
                //Icono
                Container(
                  child: Center(
                      child: Image.asset(
                    'assets/images/kindred.png',
                    scale: 2,
                  )),
                ),
                //Botón Iniciar seasión
                Container(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        if (_pageState != 0) {
                          _pageState = 0;
                        } else {
                          _pageState = 1;
                        }
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(12),
                      padding: EdgeInsets.all(15),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                        child: Text('INICIAR SESIÓN',
                            style:
                                TextStyle(color: _headingColor, fontSize: 25)),
                      ),
                    ),
                  ),
                ),
                //Botón Resgistro
                Container(
                  child: Container(
                    margin: EdgeInsets.all(12),
                    padding: EdgeInsets.all(15),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                      child: Text('RESGISTRARSE',
                          style: TextStyle(color: _headingColor, fontSize: 25)),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              _pageState = 0;
            });
          },
          child: AnimatedContainer(
            curve: Curves.fastLinearToSlowEaseIn,
            duration: Duration(
              milliseconds: 1000
            ),
            transform: Matrix4.translationValues(0, _loginOffset, 1),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
          ),
        )
      ],
    );
  }
}
