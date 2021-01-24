import 'package:flutter/material.dart';
import 'package:flutter_prototype/src/widget/widget_login.dart';

import 'package:sign_button/sign_button.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
          duration: Duration(milliseconds: 1000),
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
                              style: TextStyle(color: _headingColor, fontSize: 20)))
                    ],
                  ),
                ),
                //Icono
                Container(
                  child: Center(
                      child: Image.asset(
                    'assets/images/logo.jpg',
                    height: 250,
                    width: 250,
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
                      width: 285,
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                        child: Text('Comenzamos',
                            style:
                                TextStyle(color: _headingColor, fontSize: 25)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        //Contenedor de Iniciar Sesión
        GestureDetector(
          onTap: () {
            setState(() {
              _pageState = 0;
            });
          },
          child: AnimatedContainer(
            padding: EdgeInsets.all(50),
            curve: Curves.fastLinearToSlowEaseIn,
            duration: Duration(milliseconds: 1000),
            transform: Matrix4.translationValues(0, _loginOffset, 1),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: Column(
              children: [
                //TextTitle y TextBox
                Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(bottom: 15),
                        child: Text('Iniciar Sesión',
                            style: TextStyle(fontSize: 20))),
                    InputWithIcon(icon: Icons.email, hint: 'Ingrese su correo'),
                    SizedBox(
                      height: 10,
                    ),
                    InputWithIcon(
                        icon: Icons.keyboard, hint: 'Ingrese su contraseña'),
                  ],
                ),
                //Button
                Column(
                  children: [
                    SizedBox(
                      height: 7,
                    ),
                    PrimaryButton(
                      btnText: 'Login',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SecondaryButton(
                      btnText: 'Volver al inicio',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SignInButton(
                        buttonType: ButtonType.google,
                        buttonSize: ButtonSize.large,
                        onPressed: () {
                          print('click');
                        }
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SignInButton(
                        buttonType: ButtonType.facebook, 
                        buttonSize: ButtonSize.large,
                        onPressed: () {}
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
