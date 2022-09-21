import 'package:flutter/material.dart';

class FotoAgregarProducto extends StatelessWidget {
  final String? url;

  const FotoAgregarProducto({super.key, this.url});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 10, right: 10, top: 30),
        child: Container(
          decoration: _DecoracionFoto(),
          width: double.infinity,
          height: 450,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25)),
            child: url == null
                ? Image(
                    image: AssetImage('assets/no-image.png'), fit: BoxFit.cover)
                : FadeInImage(
                    placeholder: AssetImage('assets/jar-loading.gift'),
                    image: NetworkImage(url!),
                    fit: BoxFit.cover,
                    //),
                  ),
          ),
        ));
  }

  BoxDecoration _DecoracionFoto() => BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)),
          boxShadow: [
            BoxShadow(
                color: Color.fromARGB(255, 252, 251, 251).withOpacity(0.05),
                blurRadius: 10,
                offset: Offset(0, 5))
          ]);
}
