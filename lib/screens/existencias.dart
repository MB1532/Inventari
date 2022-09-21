import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Existencias extends StatelessWidget {
  static const String routerName = 'Existencias';
  //const Existencias({super.key});
  final controlerNombre = TextEditingController();
  final controlerEdad = TextEditingController();

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Agregar Productos'),
    ),
    body: ListView(
      padding: EdgeInsets.all(16),
      children: <Widget>[
        TextField(
          controller: controlerNombre,
          decoration: decoration('Nombre'),
        ),
        const SizedBox(height: 24),
        TextField(
          controller: controlerEdad,
          decoration: decoration('Edad'),
          keyboardType: TextInputType.number,
        ),
        const SizedBox(height: 32),
        ElevatedButton(
          child: Text('Crear'),
          onPressed: () {
            final user = User(
              nombre: controlerNombre.text,
              edad: int.parse(controlerEdad.text)
            );

            createUser(user);



            Navigator.pop(context);
          },
        )

          
      ],
    ),

  );
  
  InputDecoration decoration(String label) => InputDecoration(
    labelText: label,
    border: OutlineInputBorder(),
  );

  Future createUser(User user) async{
    final docUser = FirebaseFirestore.instance.collection('AgregarProductos').doc();
      user.id = docUser.id;


      final json = user.toJson();
      await docUser.set(json);
  }
    
}

class User {
  String id;
  final String nombre;
  final int edad;

  User({
    this.id = "",
    required this.nombre,
     required this.edad
  });


  Map<String, dynamic> toJson() => {
    'id': id,
    'nombre': nombre,
    'edad': edad,
  };










}
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    /*final db = FirebaseFirestore.instance;
    final doc = db.doc("/AgregarProductos/AgregarProductos1");
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
            stream: doc.snapshots(),
            builder: ((context, snapshot) {
              if (!snapshot.hasData){
                return const CircularProgressIndicator();

              }
              final docsnap = snapshot.data!;
              return Text(docsnap['Stock']);
            }
            ),
          ),
           ),
       ),
    );
  }
}*/