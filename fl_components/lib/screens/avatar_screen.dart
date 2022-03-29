import 'package:flutter/material.dart';

import '../themes/app_theme.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tomas Quintana'),
        actions:  [
          Container(
            margin: const EdgeInsets.only( right: 5),
            child:  const CircleAvatar(
              child: Text('TQ'),
              backgroundColor: AppTheme.background
            ),
          )
        ],
        ),
      body: const Center(
         child: CircleAvatar(
           maxRadius: 110,
           backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuArFR87826UR6kbi4kb4cAYk2T3tdfHmlaQ&usqp=CAU')
         )
      ),
    );
  }
}