import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 100;
  bool _sliderEnable = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders & Checks'),
        ),
      body: SingleChildScrollView(
        child: Column(
           children: [
             Slider.adaptive(
               min: 50,
               max: 400,
               autofocus: true,
               activeColor: AppTheme.primary,
               value: _sliderValue,
               onChanged: _sliderEnable 
              ? (value){
                 setState(() {
                   _sliderValue = value;
                 });
               }
               : null
             ),

             Checkbox(
               value: _sliderEnable, 
               onChanged: (value){
                 setState(() {
                   _sliderEnable = value ?? false;
                 });
               }
               ),

               CheckboxListTile(
                 activeColor: AppTheme.primary,
                 title: const Text('Habilitar Slide'),
                 value: _sliderEnable, 
                 onChanged: (value) => setState(() {_sliderEnable = value ?? false;})
                 ),

              SwitchListTile.adaptive(
                activeColor: AppTheme.primary,
                 title: const Text('Habilitar Slide'),
                 value: _sliderEnable, 
                 onChanged: (value) => setState(() {_sliderEnable = value;})
                ),
      
             SingleChildScrollView(
                 child: Image (
                   image: const NetworkImage('https://i.pinimg.com/originals/4a/78/a4/4a78a4b009bbf2e713d0f4bfdd329eda.png'),
                   fit: BoxFit.contain,
                   width: _sliderValue,
                   ),
               ),

           ],
        ),
      ),
    );
  }
}