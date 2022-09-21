import 'dart:convert';

class AgregarProveedores {
  AgregarProveedores({
    required this.proveedor1,
    required this.proveedor2,
  });

  Proveedor proveedor1;
  Proveedor proveedor2;

  factory AgregarProveedores.fromJson(String str) =>
      AgregarProveedores.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AgregarProveedores.fromMap(Map<String, dynamic> json) =>
      AgregarProveedores(
        proveedor1: Proveedor.fromMap(json["Proveedor1"]),
        proveedor2: Proveedor.fromMap(json["Proveedor2"]),
      );

  Map<String, dynamic> toMap() => {
        "Proveedor1": proveedor1.toMap(),
        "Proveedor2": proveedor2.toMap(),
      };
}

class Proveedor {
  Proveedor({
    this.ciudad,
    this.correo,
    this.direccion,
    required this.documento,
    this.foto,
    required this.nombre,
    this.nota,
    this.telefono,
    this.id,
  });

  String? ciudad;
  String? correo;
  String? direccion;
  String documento;
  String? foto;
  String nombre;
  String? nota;
  int? telefono;
  String? id;

  factory Proveedor.fromJson(String str) => Proveedor.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Proveedor.fromMap(Map<String, dynamic> json) => Proveedor(
        ciudad: json["Ciudad"],
        correo: json["Correo"],
        direccion: json["Direccion"],
        documento: json["Documento"],
        foto: json["Foto"],
        nombre: json["Nombre"],
        nota: json["Nota"],
        telefono: json["Telefono"],
      );

  Map<String, dynamic> toMap() => {
        "Ciudad": ciudad,
        "Correo": correo,
        "Direccion": direccion,
        "Documento": documento,
        "Foto": foto,
        "Nombre": nombre,
        "Nota": nota,
        "Telefono": telefono,
      };
}
