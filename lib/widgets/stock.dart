import 'package:flutter/material.dart';

class Stock extends StatelessWidget {
  const Stock({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 370, right: 10, top: 10, bottom: 10),
      child: Container(
        width: double.infinity,
        height: 100,
        decoration: DecoracionStock(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '12',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
      ),
    );
  }

  BoxDecoration DecoracionStock() => BoxDecoration(
      color: Color.fromARGB(255, 27, 185, 22),
      borderRadius: BorderRadius.circular(90));
}
