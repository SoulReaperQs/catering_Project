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
                  margin: const EdgeInsets.only(
                    top: 100
                  ),
                  child: Text('Login')),
                Text('TextoCualquiera')
              ],
            ),
          ),
          Container(
            child: Center(
              child: Image.asset('assets/images/kindred.png')
            ),
          ),
          Container(
            child: Center(
              child: Text('button'),
            ),
          ),
        ],
      ),
    );
  }
}