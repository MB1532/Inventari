import 'package:flutter/material.dart';

class Texto extends StatelessWidget {
  const Texto({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 120, right: 120),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        width: double.infinity,
        height: 120,
        color: Color.fromARGB(249, 224, 235, 248),
        child: Column(
          children: [
            Text(
              'Nombre: xxxxxxxxxxxxxxxxxg ', //+ titulo,
              style: TextStyle(
                  fontSize: 17,
                  color: Color.fromARGB(255, 205, 29, 29),
                  fontWeight: FontWeight.bold),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 13),
            Text(
              'Codigo:  ', //+ subTitle,
              style: TextStyle(
                fontSize: 17,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 13),
            Text(
              'precio: \$450.000 ', // + brand,
              style: TextStyle(
                fontSize: 17,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
