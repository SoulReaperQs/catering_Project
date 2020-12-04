import 'package:flutter/material.dart';

class HomaPage extends StatefulWidget {
  HomaPage({Key key}) : super(key: key);

  @override
  _HomaPageState createState() => _HomaPageState();
}

class _HomaPageState extends State<HomaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Barra'),
      ),
      body: createList(),
    );
  }

  Widget createList() {
    return ListView(
      children: [
        ListTile(
          title: Text('Titulo del objecto'),
        )
      ],
    );
  }
}
