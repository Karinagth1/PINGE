import 'dart:convert';

import 'package:best_flutter_ui_templates/inputCustomField.dart';
import 'package:flutter/material.dart';

class InputsScreenPqrs extends StatelessWidget {
  const InputsScreenPqrs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      'name': '',
      'number': '',
      'email': 'user@email.com',
      'title': '',
      'tipo': 'Petición'
    };
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PQRS',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(56, 57, 80, 1),
          title: Center(child: const Text('PQRS')),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: Form(
              key: myFormKey,
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  CustomInputField(
                      prefixIcon: Icons.person_outline_sharp,
                      labelText: 'Nombre',
                      hintText: 'Nombre del usuario',
                      formProperty: 'name',
                      formValues: formValues),
                  const SizedBox(height: 30),
                  CustomInputField(
                    prefixIcon: Icons.phone_android_rounded,
                    labelText: 'Teléfono',
                    hintText: 'Número de contacto',
                    keyboardType: TextInputType.phone,
                    textNum: 0,
                    formValues: formValues,
                    formProperty: 'number',
                  ),
                  const SizedBox(height: 30),
                  CustomInputField(
                      prefixIcon: Icons.email_outlined,
                      labelText: 'Correo',
                      hintText: 'correo@micorreo.com',
                      keyboardType: TextInputType.emailAddress,
                      formProperty: 'email',
                      formValues: formValues),
                  const SizedBox(height: 30),
                  DropdownButtonFormField<String>(
                    value: 'Petición',
                    items: const [
                      DropdownMenuItem(
                        value: 'Petición',
                        child: Text('Petición'),
                        alignment: Alignment.centerLeft,
                      ),
                      DropdownMenuItem(
                        value: 'Queja',
                        child: Text('Queja'),
                        alignment: Alignment.centerLeft,
                      ),
                      DropdownMenuItem(
                        value: 'Reclamo',
                        child: Text('Reclamo'),
                        alignment: Alignment.centerLeft,
                      ),
                      DropdownMenuItem(
                        value: 'Sugerencia',
                        child: Text('Sugerencia'),
                        alignment: Alignment.centerLeft,
                      ),
                    ],
                    onChanged: (value) {
                      print(value);
                      formValues['tipo'] = value ?? 'Petición';
                    },
                  ),
                  const SizedBox(height: 30),
                  CustomInputField(
                      labelText: 'Titulo',
                      hintText: 'Dale un título a la pqrs',
                      formProperty: 'title',
                      formValues: formValues),
                  const SizedBox(height: 30),
                  Container(
                    // color: Colors.grey,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 20,
                          ),
                          child: TextField(
                            style: TextStyle(
                              fontSize: 18,
                              letterSpacing: 0.0,
                            ),
                            textAlignVertical: TextAlignVertical.center,
                            // cursorColor: Colors.pink,
                            textAlign: TextAlign.start,
                            autocorrect: false,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              labelText: 'Descripción',
                              // labelStyle:,
                              border: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.green)),
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 10,
                              ),
                              constraints:
                                  BoxConstraints(maxHeight: double.infinity),
                            ),
                            maxLines: 8,
                            minLines: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    child: const SizedBox(
                      width: double.infinity,
                      child: Center(
                        child: Text('Enviar y Generar Radicado'),
                      ),
                    ),
                    onPressed: () {
                      FocusScope.of(context).requestFocus(FocusNode());

                      if (!myFormKey.currentState!.validate()) {
                        print('Formulario no válido');
                        return;
                      }

                      //* imprimir valores del formulario
                      print(formValues);
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
