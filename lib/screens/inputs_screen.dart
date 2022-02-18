import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Adrian',
      'last_name': 'Guerra',
      'email': 'adrigm@google.com',
      'password': '123456',
      'role': 'Admin'
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs y Forms'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Form(
              key: myFormKey,
              child: Column(
                children: [
                  CustomInputField(
                    labelText: 'Nombre',
                    hintText: 'Nombre de usuario',
                    suffixIcon: Icons.ac_unit, formProperty: 'first_name',
                    formValues: formValues,
                    // icon: Icons.admin_panel_settings,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomInputField(
                    labelText: 'Apellido',
                    hintText: 'Apellido de usuario',
                    suffixIcon: Icons.ac_unit, formProperty: 'last_name',
                    formValues: formValues,
                    // icon: Icons.admin_panel_settings,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomInputField(
                    labelText: 'Email',
                    hintText: 'Email de usuario',
                    suffixIcon: Icons.ac_unit,
                    inputType: TextInputType.emailAddress,
                    formProperty: 'email', formValues: formValues,
                    // icon: Icons.admin_panel_settings,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomInputField(
                    labelText: 'Password',
                    hintText: 'Password de usuario',
                    suffixIcon: Icons.ac_unit,
                    obscureText: true, formProperty: 'password',
                    formValues: formValues,
                    // icon: Icons.admin_panel_settings,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  DropdownButtonFormField<String>(
                    value: 'Admin',
                    items: const [
                      DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                      DropdownMenuItem(
                          value: 'Superuser', child: Text('Superuser')),
                      DropdownMenuItem(
                          value: 'Operator', child: Text('Operator')),
                    ],
                    onChanged: (value) {
                      formValues['role'] = value ?? 'Admin';
                    },
                  ),
                  ElevatedButton(
                    onPressed: () {
                      FocusScope.of(context).requestFocus(FocusNode());
                      if (!myFormKey.currentState!.validate()) {
                        print('No valido');
                      }
                      print(formValues);
                    },
                    child: const SizedBox(
                      width: double.infinity,
                      child: Center(child: Text('Save')),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
