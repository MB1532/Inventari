import 'package:aplicacion/screens/screensUtils/VistaBase.dart';
import 'package:flutter/material.dart';

class BdMovimientosView extends StatelessWidget {
  static const String routerName = 'BdMovimientos';
  const BdMovimientosView({super.key});
  
  @override
  Widget build(BuildContext context) {
    return VistaBase().agregarVistaBase('Bd  Movimientos',Text('nombrePantalla'));    
  } 
}
