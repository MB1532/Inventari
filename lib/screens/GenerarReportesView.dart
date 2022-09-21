import 'package:flutter/material.dart';

class GenerarReportesView extends StatelessWidget {
  static const String routerName = 'GenerarReportes';
  const GenerarReportesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Generar Reportes'),
      ),
      body: const Center(
        child: Text('Generar Reportes'),
      ),
    );
  }
}
