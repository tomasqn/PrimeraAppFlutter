import 'package:fl_components/widgets/custom_card_type.dart';
import 'package:fl_components/widgets/custom_card_type2.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric( horizontal: 20, vertical: 10 ),
        children: const[
          CustomCardType1(),
          SizedBox(height: 20),
          CustomCardType2(imageUrl: 'https://sm.ign.com/ign_es/feature/1/10-best-le/10-best-legendary-pokemon_wfar.jpg',),
          SizedBox(height: 20),
          CustomCardType2(imageUrl: 'https://i.pinimg.com/originals/7e/29/c1/7e29c18c7bf8d7216155ba94fdb214ba.jpg',),
          SizedBox(height: 20),
          CustomCardType2(name: 'Pokemon', imageUrl: 'https://www.wallpaperuse.com/wallp/81-812646_m.jpg',),
        ],
      ),
    );
  }
}

