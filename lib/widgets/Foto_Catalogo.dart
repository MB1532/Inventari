import 'package:flutter/material.dart';

class FotoCatalogo extends StatelessWidget {
  //const FotoAgrearProducto({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 360),
      child: ClipRRect(
        //borderRadius: BorderRadius.circular(10),
        child: Container(
          width: double.infinity,
          height: double.maxFinite,
          color: Color.fromARGB(248, 2, 16, 34),
          //child: FadeInImage(
          //placeholder: AssetImage('assets/jar-loading.gift'),
          //image: NetworkImage('https://placeholder.com/400x300/f6f6f6'),
          //),
        ),
      ),
    );
  }
}
