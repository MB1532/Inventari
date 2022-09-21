import 'dart:convert';

import 'package:flutter/material.dart';

import '../services/mappers/Mappers.dart';
import 'package:http/http.dart' as http;

class AgregarClientesService extends ChangeNotifier {
  final String _baseUrl =
      'base-datos-agregar-clientes-default-rtdb.firebaseio.com';

  final List<Cliente1> agregarclientes = [];
  bool isLoading = true;

  AgregarClientesService() {
    this.loadagregarclientes();
  }
  Future loadagregarclientes() async {
    final url = Uri.https(_baseUrl, 'AgregarClientes.json');
    final resp = await http.get(url);
    final Map<String, dynamic> agregarclientesMap = json.decode(resp.body);

    agregarclientesMap.forEach((key, value) {
      final temProduct = Cliente1.fromMap(value);
      temProduct.id = key;
      this.agregarclientes.add(temProduct);
    });

    print(this.agregarclientes[0].telefono);
  }
}
