import 'package:flutter/material.dart';

class UsuarioPrueba extends StatelessWidget {
  static const String routerName = 'UsuarioPrueba';

  const UsuarioPrueba({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Usuario Prueba'),
      ),
      body: const Center(
        child: Text('Usuario prueba'),
      ),
    );
  }
}
