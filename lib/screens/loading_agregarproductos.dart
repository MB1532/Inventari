import 'package:flutter/material.dart';

class LoadingAgregarProductos extends StatelessWidget {
  const LoadingAgregarProductos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agregar Productos'),
      ),
      body: Center(
        child: CircularProgressIndicator(
          color: Colors.indigo,
        ),
      ),
    );
  }
}
