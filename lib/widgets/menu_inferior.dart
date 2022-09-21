import 'package:flutter/material.dart';

class BottonMenu extends StatelessWidget {
  const BottonMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor: Color.fromRGBO(116, 117, 152, 1),
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded), label: 'Inicio'),
        BottomNavigationBarItem(
            icon: Icon(Icons.point_of_sale_outlined),
            label: 'Registro por Venta'),
      ],
    );
  }
}
