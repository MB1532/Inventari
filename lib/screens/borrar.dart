import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class Borrar extends StatelessWidget {
  static const String routerName = 'borrar';
  const Borrar({super.key});

  @override
  Widget build(BuildContext context) {
    //final agregarproductosservice =
    //Provider.of<AgregarProductosService>(context);
    return Scaffold(
        //backgroundColor: Colors.grey[300],
        appBar: AppBar(title: const Text('Agregar Productos')),
        body: SingleChildScrollView(
            child: Column(children: [
          Stack(
            children: [
              Positioned(
                  top: 60,
                  left: 60,
                  child: IconButton(
                    onPressed: () {
                      //Camara
                    },
                    icon: Icon(Icons.add_photo_alternate_outlined,
                        size: 40, color: Color.fromARGB(255, 109, 38, 38)),
                  )),
              Positioned(
                  top: 60,
                  left: 430,
                  child: IconButton(
                    onPressed: () {
                      //Camara
                    },
                    icon: Icon(Icons.photo_camera_outlined,
                        size: 40, color: Color.fromARGB(255, 172, 97, 97)),
                  )),
            ],
          ),
        ])));
  }
}

class LIstaAgregar extends StatelessWidget {
  const LIstaAgregar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        decoration: _DecoracionAgregarProductos(),
        child: Column(
          children: [
            SizedBox(height: 30),
            TextFormField(
                //autofocus: false,
                //initialValue: '',
                //textCapitalization: TextCapitalization.characters,
                //autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const InputDecoration(
                    hintText: 'Categoria',
                    labelText: '  Categoria  ',
                    suffix: Icon(Icons.group),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            topRight: Radius.circular(10))))),
          ],
        ),
      ),
    );
  }

  BoxDecoration _DecoracionAgregarProductos() => BoxDecoration(
      color: Color.fromARGB(255, 200, 199, 199),
      borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(25), bottomLeft: Radius.circular(25)));
}

//import 'package:aplicacion/services/services.dart';
//import 'package:aplicacion/widgets/widgets.dart';
//import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';

//import '../ui/input_decoraciones.dart';

class AgregarProductos extends StatelessWidget {
  static const String routerName = 'AgregarProductos';
  const AgregarProductos({super.key});

  @override
  Widget build(BuildContext context) {
    //final agregarproductosservice =
    // Provider.of<AgregarProductosService>(context);
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text('Agregar Productos'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                //FotoAgrearProducto(),
                Positioned(
                    top: 60,
                    left: 60,
                    child: IconButton(
                      onPressed: () {
                        //Camara
                      },
                      icon: Icon(Icons.add_photo_alternate_outlined,
                          size: 40, color: Colors.white),
                    )),
                Positioned(
                    top: 60,
                    left: 430,
                    child: IconButton(
                      onPressed: () {
                        //Camara
                      },
                      icon: Icon(Icons.photo_camera_outlined,
                          size: 40, color: Colors.white),
                    ))
              ],
            ),
            ListaAgregarProductos(),
            //ListadoAgregarProdcutos(),
            SizedBox(
              height: 100,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.check_box_rounded),
        onPressed: () {},
      ),
    );
  }
}

class ListaAgregarProductos extends StatelessWidget {
  const ListaAgregarProductos({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        decoration: _DecoracionAgregarProductos(),
        child: Column(
          children: [
            SizedBox(height: 30),
            TextFormField(
                autofocus: false,
                initialValue: '',
                textCapitalization: TextCapitalization.characters,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const InputDecoration(
                    hintText: 'Categoria',
                    labelText: '  Categoria  ',
                    suffix: Icon(Icons.group),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            topRight: Radius.circular(10))))),
            SizedBox(
              height: 30,
            ),
            TextFormField(
                autofocus: false,
                initialValue: '',
                textCapitalization: TextCapitalization.characters,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const InputDecoration(
                    hintText: 'Codigo del producto',
                    labelText: '  Codigo  ',
                    suffix: Icon(Icons.group),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            topRight: Radius.circular(10))))),
            SizedBox(
              height: 30,
            ),
            TextFormField(
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
                    labelText: '  Nombre  ',
                    suffix: Icon(Icons.group),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            topRight: Radius.circular(10))))),
            SizedBox(
              height: 30,
            ),
            TextFormField(
                keyboardType: TextInputType.number,
                autofocus: false,
                initialValue: '',
                textCapitalization: TextCapitalization.characters,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const InputDecoration(
                    hintText: 'Precio del producto',
                    labelText: '  Precio   ',
                    suffix: Icon(Icons.group),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            topRight: Radius.circular(10))))),
            SizedBox(
              height: 30,
            ),
            TextFormField(
                autofocus: false,
                initialValue: '',
                textCapitalization: TextCapitalization.characters,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const InputDecoration(
                    hintText: 'Unidad de medida',
                    labelText: '  Unidad de medida  ',
                    suffix: Icon(Icons.group),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            topRight: Radius.circular(10))))),
            SizedBox(
              height: 30,
            ),
            TextFormField(
                autofocus: false,
                initialValue: '',
                textCapitalization: TextCapitalization.characters,
                validator: (value) {
                  if (value == null || value.length < 1)
                    return 'El nombre es obligatorio';
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const InputDecoration(
                    hintText: 'Stock producto',
                    labelText: '  Stock  ',
                    suffix: Icon(Icons.group),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            topRight: Radius.circular(10))))),
            SizedBox(
              height: 30,
            ),
            TextFormField(
                autofocus: false,
                initialValue: '',
                textCapitalization: TextCapitalization.characters,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const InputDecoration(
                    hintText: 'Detalles Complementarios',
                    labelText: '  Detalles  ',
                    suffix: Icon(Icons.group),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            topRight: Radius.circular(10))))),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }

  BoxDecoration _DecoracionAgregarProductos() => BoxDecoration(
      color: Color.fromARGB(255, 200, 199, 199),
      borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(25), bottomLeft: Radius.circular(25)));
}
