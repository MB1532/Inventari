import 'package:aplicacion/screens/screens.dart';
import 'package:flutter/material.dart';

class MenuCentral extends StatelessWidget {
  const MenuCentral({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AgregarProductoView()));
            },
            child: _SingleCard(
                color: Color.fromARGB(255, 153, 157, 237),
                icon: Icons.add_chart_outlined,
                text: 'Agregar Productos'),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CatalogoProductos()));
            },
            child: _SingleCard(
                color: Color.fromARGB(255, 153, 157, 237),
                icon: Icons.poll_rounded,
                text: 'Catalogo de Productos'),
          ),
        ]),
        TableRow(children: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => RealizarMovimientos()));
            },
            child: _SingleCard(
                color: Color.fromARGB(255, 153, 157, 237),
                icon: Icons.move_down_outlined,
                text: 'Realizar Movimientos'),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Existencias()));
            },
            child: _SingleCard(
                color: Color.fromARGB(255, 153, 157, 237),
                icon: Icons.space_dashboard_outlined,
                text: 'Existencias'),
          ),
        ]),
        TableRow(children: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => VentasDiarias()));
            },
            child: _SingleCard(
                color: Color.fromARGB(255, 153, 157, 237),
                icon: Icons.price_change_outlined,
                text: 'Ventas Diarias'),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Creditos()));
            },
            child: _SingleCard(
                color: Color.fromARGB(255, 153, 157, 237),
                icon: Icons.description_outlined,
                text: 'Creditos'),
          ),
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard(
      {required this.icon, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      height: 283,
      decoration: BoxDecoration(
          color: Color.fromRGBO(62, 66, 107, 0.7),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: this.color,
            child: Icon(
              this.icon,
              size: 80,
            ),
            radius: 70,
          ),
          SizedBox(height: 30),
          Text(this.text, style: TextStyle(color: this.color, fontSize: 18))
        ],
      ),
    );
  }
}
