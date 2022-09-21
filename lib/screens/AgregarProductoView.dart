import 'package:aplicacion/screens/screensUtils/CampoGeneralView.dart';
import 'package:aplicacion/screens/screensUtils/CampoImagenView.dart';
import 'package:aplicacion/screens/screensUtils/VistaBase.dart';
import 'package:flutter/material.dart';


class AgregarProductoView extends StatelessWidget {
  static const String routerName = 'Agregar Productos';
  const AgregarProductoView({super.key});

  @override
  Widget build(BuildContext context) {
    return VistaBase().agregarVistaBase('AgregarProductos',const AgregarProductoBody());    
  } 
}  
  class AgregarProductoBody extends StatelessWidget{
  const AgregarProductoBody({Key? key}) : super(key: key);   
    
      @override
      Widget build(BuildContext context) {   
        return Scaffold(
        body: SingleChildScrollView(
        child: Column(
          children: [
            CampoImagenView().agregarImagen(),          
            const ItemsAgregarProductos(),
            const SizedBox(height: 100)
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.check_box_rounded),
        onPressed: () {},
      ),
    );    
      }
  }

class ItemsAgregarProductos extends StatelessWidget {
  const ItemsAgregarProductos({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        decoration: decoracionAgregarProductos(),
        child: Column(
          children: [            
            CampoGeneralView().agregarCampoInfo (false, false,'Categoria', 30),          
            CampoGeneralView().agregarCampoInfo (false, false, 'Codigo del producto', 30),            
            CampoGeneralView().agregarCampoInfo (false, false, 'Nombre del producto', 30),          
            CampoGeneralView().agregarCampoInfo (false, true, 'Precio del producto', 30),          
            CampoGeneralView().agregarCampoInfo (false, false, 'Unidad de medida', 30),            
            CampoGeneralView().agregarCampoInfo (false, false, 'Stock Producto', 30),            
            CampoGeneralView().agregarCampoInfo (false, false, 'Detalles Complementarios', 30),            
            CampoGeneralView().agregarCampoInfo (true, true, 'Test', 30),
            const SizedBox(height: 30)            
          ],
        ),
      ),
    );
  }

  BoxDecoration decoracionAgregarProductos() => const BoxDecoration(
      color: Color.fromARGB(255, 236, 236, 236),            
      borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(25), bottomLeft: Radius.circular(25)));
          
}
