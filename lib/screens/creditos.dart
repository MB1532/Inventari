import 'package:flutter/material.dart';

class Creditos extends StatelessWidget {
  static const String routerName = 'Creditos';
  const Creditos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Creditos'),
      ),
      body: const Center(
        child: Text('Creditos'),
      ),
    );
  }
}
