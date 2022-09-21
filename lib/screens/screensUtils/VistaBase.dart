import 'package:flutter/material.dart';

import '../../widgets/menu_inferior.dart';

class VistaBase  {  
  static const String routerName = 'BdMovimientos';
  
  Widget agregarVistaBase (String nombrePantalla, Widget body){  
    
    return Scaffold(
      appBar: AppBar(
        title:  Text(nombrePantalla),
      ),
      body: (body),
      bottomNavigationBar: const BottonMenu(),
    );    
  } 
  
}


