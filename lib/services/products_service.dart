import 'dart:convert';

import 'package:aplicacion/services/mappers/Mappers.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AgregarProductosService extends ChangeNotifier {
  final String _baseUrl =
      'base-datos-agregar-producto-default-rtdb.firebaseio.com';
  final List<Contenido> agregarproductos = [];

  bool isLoading = true;
  late Contenido selectedagregarproductos;

  AgregarProductosService() {
    this.loadagregarproductos();
  }

  Future<List<Contenido>> loadagregarproductos() async {
    this.isLoading = true;
    notifyListeners();
    final url = Uri.https(_baseUrl, 'AgregarProductos.json');
    final resp = await http.get(url);

    final Map<String, dynamic> agregarproductosMap = json.decode(resp.body);

    agregarproductosMap.forEach((key, value) {
      final tempProduct = Contenido.fromMap(value);
      tempProduct.id = key;
      this.agregarproductos.add(tempProduct);
    });

    this.isLoading = false;

    notifyListeners();

    return this.agregarproductos;
  }
}
