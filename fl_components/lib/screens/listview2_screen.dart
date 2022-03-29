import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
   
  final options = const['Megaman', 'Metal Gear', 'Super Smash', 'Mario Party'];

  const Listview2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('List View 2')
      ),
      body: ListView.separated(
        itemBuilder: (context, index) =>  ListTile(
          title: Text(options[index]),
          trailing: const Icon(Icons.arrow_forward_ios_outlined, color: Colors.indigo), 
          onTap: (){
            final game = options[index];
          }

        ), 
        separatorBuilder: (_, __) => const Divider(), 
        itemCount: options.length
      )
      
    );
  }
}