import 'package:aplicacion/screens/screensUtils/VistaBase.dart';
import 'package:flutter/material.dart';

class TableroMovimientosView extends StatelessWidget {
  static const String routerName = 'TableroMovimientos';
  const TableroMovimientosView({super.key});

  @override
  Widget build(BuildContext context) {
    return VistaBase().agregarVistaBase('Tablero de Movimientos',Text('nombrePantalla'));    
  } 
}
