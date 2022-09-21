import 'package:aplicacion/screens/screensUtils/VistaBase.dart';
import 'package:flutter/material.dart';

class AcercaDeView extends StatelessWidget {
  static const String routerName = 'AcercaDe';
  const AcercaDeView({super.key});

  @override
  Widget build(BuildContext context) {
    return VistaBase().agregarVistaBase('Acerca de',Text('nombrePantalla'));    
  } 
}
