import 'package:flutter/material.dart';
import 'package:flutter_prototype/src/home_screen.dart';

//Widget para "Boton Primario"
class PrimaryButton extends StatefulWidget {
  final btnText;
  PrimaryButton({this.btnText});

  @override
  _PrimaryButtonState createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  final textStyleBtn = TextStyle(color: Colors.white, fontSize: 20);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: 285,
        decoration: BoxDecoration(
            color: Colors.amber, borderRadius: BorderRadius.circular(30)),
        padding: EdgeInsets.all(10),
        child: Center(child: Text(widget.btnText, style: textStyleBtn)),
      ),
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomeScreen()));
      },
    );
  }
}

//Widget para "Boton Secundario"
class SecondaryButton extends StatefulWidget {
  final btnText;
  SecondaryButton({this.btnText});

  @override
  _SecondaryButtonState createState() => _SecondaryButtonState();
}

class _SecondaryButtonState extends State<SecondaryButton> {
  final textStyleBtn = TextStyle(color: Colors.amber, fontSize: 20);
  final styletext = TextStyle();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 285,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.amber),
          borderRadius: BorderRadius.circular(30)),
      padding: EdgeInsets.all(10),
      child: Center(child: Text(widget.btnText, style: textStyleBtn)),
    );
  }
}

//Widget para "Ingreso de Texto"
class InputWithIcon extends StatefulWidget {
  final IconData icon;
  final String hint;
  InputWithIcon({this.icon, this.hint});

  @override
  _InputWithIconState createState() => _InputWithIconState();
}

class _InputWithIconState extends State<InputWithIcon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black26, width: 2),
          borderRadius: BorderRadius.circular(30)),
      child: Row(
        children: <Widget>[
          Container(
              width: 60,
              child: Icon(
                widget.icon,
                size: 15,
                color: Colors.black26,
              )),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 7),
                  border: InputBorder.none,
                  hintText: widget.hint),
            ),
          )
        ],
      ),
    );
  }
}
