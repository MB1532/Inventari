import 'dart:math';

import 'package:aplicacion/widgets/servicesWidgets/models/ClienteModel.dart';
import 'package:flutter/material.dart';

class ClientesView extends StatelessWidget {
  static String routerName = 'Clientes';
  ClientesView({super.key});

  final List<ClienteModel> clientes = [
    ClienteModel( tipoPersona: true, nombreRazonSocial: 'Miguel Blanco', numeroCelular: 310123456),
    ClienteModel( tipoPersona: true, nombreRazonSocial: 'Fernando Blanco', numeroCelular: 314567899),
    ClienteModel( tipoPersona: true, nombreRazonSocial: 'Monica Gonzales', numeroCelular: 321123456),
    ClienteModel( tipoPersona: true, nombreRazonSocial: 'Leidy Flores', numeroCelular: 310123456),
    ClienteModel( tipoPersona: true, nombreRazonSocial: 'Angel Blanco', numeroCelular: 300123456),
    ClienteModel( tipoPersona: true, nombreRazonSocial: 'TEST', numeroCelular: 000000),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Clientes'),
        ),
        body: ListView.builder(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: clientes.length,
            itemBuilder: (BuildContext context, int index) {
              final contacto = clientes[index];
              return ListTile(
                title: Text(contacto.nombreRazonSocial),
                subtitle: Text('${contacto.numeroCelular}'),
                leading: CircleAvatar(
                  backgroundColor: Color.fromRGBO(Random().nextInt(255),
                      Random().nextInt(255), Random().nextInt(255), 1),
                  child: Text(contacto.nombreRazonSocial[0]),
                ),
              );
            }));
  }
}
