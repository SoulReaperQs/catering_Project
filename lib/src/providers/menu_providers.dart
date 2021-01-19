import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class MenuProvider {
  List<dynamic> rutas = [];
  
  Future<List<dynamic>> cargarData() async {
    final resp = await rootBundle.loadString('data/menu.json');
    Map dataMap = json.decode(resp);
    rutas = dataMap['rutas'];
    return rutas;
  }
}

final menuProvider = new MenuProvider();
