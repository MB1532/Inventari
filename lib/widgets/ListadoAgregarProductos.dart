import 'package:flutter/material.dart';

class ListadoAgregarProdcutos extends StatelessWidget {
  const ListadoAgregarProdcutos({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        autofocus: false,
        initialValue: '',
        textCapitalization: TextCapitalization.characters,
        validator: (value) {
          if (value == null || value.length < 1)
            return 'El nombre es obligatorio';
        },
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: const InputDecoration(
            hintText: 'Nombre del producto',
            labelText: 'Nombre',
            suffix: Icon(Icons.group),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    topRight: Radius.circular(10)))));
  }
}
