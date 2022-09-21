import 'package:aplicacion/widgets/stock.dart';
import 'package:aplicacion/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../services/mappers/Mappers.dart';

class FormatoAgregarProducto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        margin: EdgeInsets.only(top: 40, bottom: 5),
        width: double.infinity,
        height: 120,
        decoration: _fondo(),
        child: Stack(
          children: [FotoCatalogo(), Stock(), Texto()],
        ),
      ),
    );
  }

  BoxDecoration _fondo() => BoxDecoration(
        color: Color.fromARGB(249, 224, 235, 248),
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(60), bottomRight: Radius.circular(60)),
      );
}
