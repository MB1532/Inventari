import 'package:flutter/material.dart';

class CampoGeneralView {

  Column agregarCampoInfo (bool obligatorio, bool numerico, String nombreCampo, double margen) {  
    dynamic verificarKeyboardType;
    if (numerico == true){
      verificarKeyboardType = TextInputType.number;
    }     
           return  Column(
            children: [
              SizedBox(height: margen),
              TextFormField(
              keyboardType: verificarKeyboardType,              
                autofocus: false,
                initialValue: '',
                textCapitalization: TextCapitalization.characters,
                validator: (value) {
                  if(obligatorio == true){
                    if (value == null || value.isEmpty) {
                    return 'El nombre es obligatorio';
                    }
                  }                  
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                    hintText: nombreCampo,
                    labelText: '  $nombreCampo  ',
                    suffix: const Icon(Icons.group),
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            topRight: Radius.circular(10)
                            )
                     )
                  )
              )
            ]);
  }
}

                          

