import 'package:aplicacion/screens/screensUtils/VistaBase.dart';
import 'package:flutter/material.dart';

class ConfiguracionView extends StatelessWidget {
  static const String routerName = 'Configuracion';
  const ConfiguracionView({super.key});

  @override
  Widget build(BuildContext context) {
    return VistaBase().agregarVistaBase('Configuración',Text('nombrePantalla'));    
  } 
}