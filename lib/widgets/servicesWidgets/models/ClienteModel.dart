
import 'package:flutter/material.dart';

class ClienteModel {
  final bool tipoPersona;
  final String nombreRazonSocial;
  final int numeroCelular;
  final String? numeroIdentificacion;
  final String? telefono;
  final String? pais;
  final String? ciudad;
  final String? correo;
  final String? direccion;
  final String? foto;
  final String? observaciones;

  ClienteModel({
    required this.tipoPersona,
    required this.nombreRazonSocial,
    required this.numeroCelular,
    this.numeroIdentificacion,
    this.telefono,
    this.pais,
    this.ciudad,
    this.correo,
    this.direccion,
    this.foto,
    this.observaciones,
  });
}
