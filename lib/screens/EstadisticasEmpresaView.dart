import 'package:aplicacion/screens/screensUtils/VistaBase.dart';
import 'package:flutter/material.dart';

class EstadisticasEmpresaView extends StatelessWidget {
  static const String routerName = 'EstadisticasEmpresa';
  const EstadisticasEmpresaView({super.key});

  @override
  Widget build(BuildContext context) {
    return VistaBase().agregarVistaBase('Estadisticas de empresa',Text('nombrePantalla'));    
  } 
}
