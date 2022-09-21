import 'dart:convert';

import 'package:flutter/cupertino.dart';

import '../services/mappers/Mappers.dart';
import 'package:http/http.dart' as http;

class AgregarProveedoresService extends ChangeNotifier {
  final String _baseUrl =
      'base-datos-agregar-proveedores-default-rtdb.firebaseio.com';

  final List<Proveedor> agregarproveedores = [];
  bool isLoading = true;

  AgregarProveedoresService() {
    this.loadagregarporveedores();
  }

  Future loadagregarporveedores() async {
    final url = Uri.https(_baseUrl, 'AgregarProveedores.json');
    final resp = await http.get(url);

    final Map<String, dynamic> agregarproveedoresMap = json.decode(resp.body);

    agregarproveedoresMap.forEach((key, value) {
      final tempProduct = Proveedor.fromMap(value);
      tempProduct.id = key;
      this.agregarproveedores.add(tempProduct);
    });
  }
}
