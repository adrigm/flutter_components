import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs y Forms'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Column(
              children: [
                TextFormField(
                  autofocus: true,
                  initialValue: "",
                  textCapitalization: TextCapitalization.words,
                  onChanged: (value) => {print(value)},
                  validator: (value) {
                    if (value == null) {
                      return "Esta campo es requerido";
                    }
                    return value.length < 3 ? 'Minimo de c' : null;
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: const InputDecoration(
                      hintText: 'Nombre del usuario',
                      labelText: 'Nombre',
                      helperText: 'Solo letras',
                      suffix: Icon(Icons.group_add_outlined),
                      icon: Icon(Icons.admin_panel_settings),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10)))),
                ),
              ],
            ),
          ),
        ));
  }
}
