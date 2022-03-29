import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS (BuildContext context){

    showCupertinoDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context){
        return CupertinoAlertDialog(
          title: const Text('Titulo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Contenido de la alerta'),
              SizedBox(height: 10),
              FlutterLogo( size: 100)
            ],
           ),

            actions: [
             TextButton(
               onPressed: () => Navigator.pop(context),
               child: const Text('Cancelar', style: TextStyle(color: Colors.red),)
               ),
             TextButton(
               onPressed: () => Navigator.pop(context),
               child: const Text('Aceptar')
               )
           ],
        );
      }
      );
  }

  void displayDialogAndroid (BuildContext context){

    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context){
        return AlertDialog(
          elevation: 5,
          title: const Text('Titutlo'),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Contenido de la alerta'),
              SizedBox(height: 10),
              FlutterLogo( size: 100)
            ],
           ),

           actions: [
             TextButton(
               onPressed: () => Navigator.pop(context),
               child: const Text('Cancelar'))
           ],
         );
       }
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: ElevatedButton(
           onPressed: () => Platform.isAndroid 
           ? displayDialogAndroid(context)
           : displayDialogIOS(context),
           //onPressed: () => displayDialogIOS(context), 
          //  onPressed: () => displayDialogAndroid(context), 
           child: const Padding(
             padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
             child: Text('Mostar Alerta', style: TextStyle(fontSize: 16),)
             ),
 
           ),
      ),

      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () => Navigator.pop(context),
        ),
      );
   }
}