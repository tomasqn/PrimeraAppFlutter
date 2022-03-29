import 'package:flutter/material.dart';
import '../themes/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children:  [
          const ListTile(
            title: Text ('Soy un titulo'),
            leading: Icon(Icons.photo_album, color: AppTheme.primary,),
            subtitle: Text('Aliqua cupidatat exercitation adipisicing labore enim nulla. Laboris aute culpa tempor aliquip adipisicing non velit. Sit et id dolor sunt ut enim.')
          ),

          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: (){}, 
                  child: const Text('Cancelar'),
                ),
                TextButton(
                  onPressed: (){}, 
                  child: const Text('Ok')
                ),
              ],
            ),
          )
        ]
        )
    );
  }
  }
