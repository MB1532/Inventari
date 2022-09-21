import 'package:aplicacion/screens/screensUtils/VistaBase.dart';
import 'package:flutter/material.dart';

class GastosView extends StatelessWidget {
  static const String routerName = 'Gastos';
  const GastosView({super.key});

  @override
  Widget build(BuildContext context) {
    return VistaBase().agregarVistaBase('Gastos',Text('nombrePantalla'));    
  } 
}
