import 'package:aplicacion/widgets/background.dart';
import 'package:aplicacion/widgets/menu_central.dart';
import 'package:aplicacion/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../widgets/menu_inferior.dart';

class PaginaDeInicio extends StatelessWidget {
  static const String routerName = 'PaginaDeInicio';
  const PaginaDeInicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('menu'),
      ),
      drawer: const MenuBarraLateral(),
      body: Stack(
        children: [
          Background(),

          MenuCentral()

          //CardTable()
        ],
      ),
      bottomNavigationBar: const BottonMenu(),
    );
  }
}
