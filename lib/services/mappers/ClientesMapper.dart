import 'dart:convert';

class AgregarClientes {
  AgregarClientes({
    required this.cliente1,
    required this.cliente2,
  });

  Cliente1 cliente1;
  Cliente2 cliente2;

  factory AgregarClientes.fromJson(String str) =>
      AgregarClientes.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AgregarClientes.fromMap(Map<String, dynamic> json) => AgregarClientes(
        cliente1: Cliente1.fromMap(json["Cliente1"]),
        cliente2: Cliente2.fromMap(json["Cliente2"]),
      );

  Map<String, dynamic> toMap() => {
        "Cliente1": cliente1.toMap(),
        "Cliente2": cliente2.toMap(),
      };
}

class Cliente1 {
  Cliente1({
    required this.cedula,
    this.ciudad,
    this.correo,
    this.direccion,
    this.foto,
    required this.nombre,
    this.nota,
    this.telefono,
    this.id,
  });

  int cedula;
  String? ciudad;
  String? correo;
  int? direccion;
  String? foto;
  String nombre;
  String? nota;
  int? telefono;
  String? id;

  factory Cliente1.fromJson(String str) => Cliente1.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Cliente1.fromMap(Map<String, dynamic> json) => Cliente1(
        cedula: json["Cedula"],
        ciudad: json["Ciudad"],
        correo: json["Correo"],
        direccion: json["Direccion"],
        foto: json["Foto"],
        nombre: json["Nombre"],
        nota: json["Nota"],
        telefono: json["Telefono"],
      );

  Map<String, dynamic> toMap() => {
        "Cedula": cedula,
        "Ciudad": ciudad,
        "Correo": correo,
        "Direccion": direccion,
        "Foto": foto,
        "Nombre": nombre,
        "Nota": nota,
        "Telefono": telefono,
      };
}

class Cliente2 {
  Cliente2({
    required this.cedula,
    this.ciudad,
    this.correo,
    this.direccion,
    this.foto,
    required this.nombre,
    this.nota,
    this.telefono,
  });

  String cedula;
  String? ciudad;
  String? correo;
  String? direccion;
  String? foto;
  String nombre;
  String? nota;
  int? telefono;

  factory Cliente2.fromJson(String str) => Cliente2.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Cliente2.fromMap(Map<String, dynamic> json) => Cliente2(
        cedula: json["Cedula"],
        ciudad: json["Ciudad"],
        correo: json["Correo"],
        direccion: json["Direccion"],
        foto: json["Foto"],
        nombre: json["Nombre"],
        nota: json["Nota"],
        telefono: json["Telefono"],
      );

  Map<String, dynamic> toMap() => {
        "Cedula": cedula,
        "Ciudad": ciudad,
        "Correo": correo,
        "Direccion": direccion,
        "Foto": foto,
        "Nombre": nombre,
        "Nota": nota,
        "Telefono": telefono,
      };
}
