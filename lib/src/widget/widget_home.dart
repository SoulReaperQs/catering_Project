import 'package:flutter/material.dart';
//Widget para crear Tarjetas 
class NewPadding extends StatelessWidget {
  final String image1;
  final String text1;
  final String image2;
  final String text2;

  const NewPadding({
    Key key,
    this.image1,
    this.text1,
    this.image2,
    this.text2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 35),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 0),
                ),
              ],
            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Image(
                    height: 100,
                    width: 100,
                    image: AssetImage(image1),
                  ),
                ),
                Text(
                  text1,
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 12,
                      decoration: TextDecoration.none),
                )
              ],
            ),
          ),
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 0),
                ),
              ],
            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Image(
                    height: 100,
                    width: 100,
                    image: AssetImage(image2),
                  ),
                ),
                Text(
                  text2,
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 12,
                      decoration: TextDecoration.none),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CardFood extends StatelessWidget {
  const CardFood({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: 50,
        height: 50,
        color: Colors.blueAccent,
      )
    );
  }
}
