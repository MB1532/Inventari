import 'package:aplicacion/screens/screensUtils/VistaBase.dart';
import 'package:flutter/material.dart';

class ProveedoresView extends StatelessWidget {
  static const String routerName = 'Proveedores';
  const ProveedoresView({super.key});

  @override
  Widget build(BuildContext context) {
    return VistaBase().agregarVistaBase('Proveedores',Text('nombrePantalla'));    
  } 
}
