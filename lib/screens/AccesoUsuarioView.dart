import 'package:aplicacion/screens/screensUtils/VistaBase.dart';
import 'package:flutter/material.dart';

class AccesoUsuarioView extends StatelessWidget {
  static const String routerName = 'AccesoUsuario';
  const AccesoUsuarioView({super.key});

  @override
  Widget build(BuildContext context) {
    return VistaBase().agregarVistaBase('Acceso Usuario',Text('nombrePantalla'));    
  } 
}
