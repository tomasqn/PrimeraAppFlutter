import 'package:flutter/material.dart';

import '../widgets/widgets.dart';



class InputsScreen extends StatelessWidget {
    
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Tomas',
      'last_name': 'Quintana',
      'email': 'tomas@google.com',
      'password': '123456',
      'role': 'admin'
    };
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
          
                CustomWidgetField(
                  labelText: 'Nombre',
                  hintText: 'Nombre del usuario',
                  textInputType: TextInputType.name, 
                  formProperty: 'first_name', 
                  formValues: formValues,
                ),
          
                const SizedBox(height: 25),
          
                CustomWidgetField(
                  labelText: 'Apellido',
                  hintText: 'Apellido del usuarios',
                  textInputType: TextInputType.name,
                  formProperty: 'last_name', 
                  formValues: formValues,
                ),
          
                const SizedBox(height: 25),
                
                CustomWidgetField(
                  labelText: 'Correo',
                  hintText: 'Correo del usuario',
                  textInputType: TextInputType.emailAddress,
                  formProperty: 'email', 
                  formValues: formValues,
                ),
          
                const SizedBox(height: 25),
                
                CustomWidgetField(
                  labelText: 'Contraseña',
                  hintText: 'Contraseña del usuario',
                  obscureText: true,
                  formProperty: 'password', 
                  formValues: formValues,
                ),
          
                const SizedBox(height: 25),

                DropdownButtonFormField<String>(
                  items: const [
                    DropdownMenuItem(child: Text('Admin'), value: 'Admin'),
                    DropdownMenuItem(child: Text('Superuser'), value: 'Superuser'),
                    DropdownMenuItem(child: Text('Developer'), value: 'Developer'),
                    DropdownMenuItem(child: Text('User'), value: 'User'),
                  ], 
                  onChanged: (value) {
                    formValues['role'] = value ?? 'Admin';
                  }
                  ),

                const SizedBox(height: 25),
                
                ElevatedButton(
                  child: const SizedBox(
                    child: Center(child: Text('Guardar')),
                    width: double.infinity
                    ),
                  onPressed: (){
                    FocusScope.of(context).requestFocus(FocusNode());

                    if (!myFormKey.currentState!.validate()){
                      return;
                    }
                    print(formValues);
                  },)
                
              ],
              ),
          )    
        ),
      )
    );
  }
}

