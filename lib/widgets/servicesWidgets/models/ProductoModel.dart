

class ProveedorModel {
  String? codigo;
  String nombre;
  String? categoria;
  double precio;
  String? imagen;
  String? unidadMedida;
  int stock;
  String? detalleComplementario;
  bool catalogoPublico;

  ProveedorModel ({
    required this.codigo,
    required this.nombre,
    this.categoria,
    required this.precio,
    this.imagen,
    this.unidadMedida,
    required this.stock,
    this.detalleComplementario,
    required this.catalogoPublico
  });
}