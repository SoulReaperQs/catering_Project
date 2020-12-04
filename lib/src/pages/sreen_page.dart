import 'package:flutter/material.dart';

class ScreenPage extends StatefulWidget {
  ScreenPage({Key key}) : super(key: key);

  @override
  _ScreenPageState createState() => _ScreenPageState();
}

class _ScreenPageState extends State<ScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Column(
              children: [
                Container(
                    margin: const EdgeInsets.only(top: 100),
                    child: Text('GUSTÓ & MÁS',
                        style:
                            TextStyle(color: Colors.blueAccent, fontSize: 40))),
                Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                      'La cocina de autor es poner tu personalidad en lo que haces y ese sentimiento la convierte en algo distinto',
                      style: 
                            TextStyle(color: Colors.purpleAccent, fontSize: 15)))
              ],
            ),
          ),
          Container(
            child: Center(child: Image.asset('assets/images/kindred.png')),
          ),
          Container(
            child: GestureDetector(
              onTap: () {
              },
              child: Container(
                margin: EdgeInsets.all(12),
                padding: EdgeInsets.all(20),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(50)),
                child: Center(
                  child: Text('Iniciar Sesión',
                      style: TextStyle(color: Colors.white, fontSize: 25)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
