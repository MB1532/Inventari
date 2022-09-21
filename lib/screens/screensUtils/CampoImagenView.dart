import 'dart:io';

import 'package:flutter/material.dart';
import 'package:aplicacion/widgets/widgets.dart';
import 'package:image_picker/image_picker.dart';

class CampoImagenView {
  
  Stack agregarImagen (){
    return Stack(children: [
              const FotoAgregarProducto(),
              Positioned(
                  top: 80,
                  left: 60,
                  child: IconButton(
                    onPressed: () async {
                      final picker = ImagePicker();
                      final PickedFile? pickedFile = await picker.getImage(
                          source: ImageSource.gallery, imageQuality: 100);
                      if (pickedFile == null) {
                        print('No sleeeciono nada');
                        return;
                      }
                      print('Imagen cargada ${pickedFile.path}');
                      //Galeria
                    },
                    icon: const Icon(Icons.add_photo_alternate_outlined,
                        size: 40, color: Colors.white),
                  )),
              Positioned(
                  top: 80,
                  left: 430,
                  child: IconButton(
                    onPressed: () async {
                      final picker = ImagePicker();
                      final PickedFile? pickedFile = await picker.getImage(
                          source: ImageSource.camera, imageQuality: 100);
                      if (pickedFile == null) {
                        print('No sleeeciono nada');
                        return;
                      }
                      print('Imagen cargada ${pickedFile.path}');
                    },
                    icon: const Icon(Icons.photo_camera_outlined,
                        size: 40, color: Colors.white),
                  ))
            ]);
    
  }
}


/*File? nuevaImagen; 



void cargarImagenSeleccionada(String path){

  this.nuevaImagen = File.fromUri(Uri(path: path));

}*/ //cargar imagen o foto de inicio