import 'dart:convert';

class AgregarProducto {
  AgregarProducto({
    required this.contenido,
    required this.contenido1,
  });

  Contenido contenido;
  Contenido contenido1;

  factory AgregarProducto.fromJson(String str) =>
      AgregarProducto.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AgregarProducto.fromMap(Map<String, dynamic> json) => AgregarProducto(
        contenido: Contenido.fromMap(json["Contenido"]),
        contenido1: Contenido.fromMap(json["Contenido 1"]),
      );

  Map<String, dynamic> toMap() => {
        "Contenido": contenido.toMap(),
        "Contenido 1": contenido1.toMap(),
      };
}

class Contenido {
  Contenido(
      {this.categoria,
      required this.codigoDelProducto,
      this.detallesComplementarios,
      this.imagen,
      required this.nombre,
      this.precio,
      this.stock,
      this.unidadDeMedida,
      this.id});

  String? categoria;
  String codigoDelProducto;
  String? detallesComplementarios;
  String? imagen;
  String nombre;
  double? precio;
  int? stock;
  String? unidadDeMedida;
  String? id;

  factory Contenido.fromJson(String str) => Contenido.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Contenido.fromMap(Map<String, dynamic> json) => Contenido(
        categoria: json["Categoría"],
        codigoDelProducto: json["Código del producto"],
        detallesComplementarios: json["Detalles complementarios"],
        imagen: json["Imagen"],
        nombre: json["Nombre"],
        precio: json["Precio"].toDouble(),
        stock: json["Stock"],
        unidadDeMedida: json["Unidad de medida"],
        id: json["id"],
      );

  Map<String, dynamic> toMap() => {
        "Categoría": categoria,
        "Código del producto": codigoDelProducto,
        "Detalles complementarios": detallesComplementarios,
        "Imagen": imagen,
        "Nombre": nombre,
        "Precio": precio,
        "Stock": stock,
        "Unidad de medida": unidadDeMedida,
        "id": id,
      };
}
