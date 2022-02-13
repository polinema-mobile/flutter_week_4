import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';

class Input extends StatelessWidget {
  const Input({Key? key, required this.inputHandler}) : super(key: key);

  final Function(String) inputHandler;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
        labelText: "Masukkan Suhu",
        hintText: "Suhu",
      ),
      validator: ValidationBuilder().minLength(1).build(),
      onChanged: (text) => inputHandler(text),
    );
  }
}
