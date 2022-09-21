import 'package:flutter/material.dart';

class VentasDiarias extends StatelessWidget {
  static const String routerName = 'VentasDiarias';
  const VentasDiarias({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ventas Diarias'),
      ),
      body: const Center(
        child: Text('Ventas Diarias'),
      ),
    );
  }
}
