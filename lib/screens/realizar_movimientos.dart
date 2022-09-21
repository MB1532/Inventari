import 'package:flutter/material.dart';

class RealizarMovimientos extends StatelessWidget {
  static const String routerName = 'RealizarMovimientos';
  const RealizarMovimientos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Realizar Movimientos'),
      ),
      body: const Center(
        child: Text('Realizar Movimientos'),
      ),
    );
  }
}
