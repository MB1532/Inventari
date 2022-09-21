import 'package:aplicacion/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CatalogoProductos extends StatelessWidget {
  static const String routerName = 'CatalogoProductos';
  const CatalogoProductos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('catalogo'),
      ),
      body: ListView.builder(
        itemCount: 2,
        itemBuilder: (BuildContext context, int index) =>
            FormatoAgregarProducto(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (() {}),
      ),
    );
  }
}
