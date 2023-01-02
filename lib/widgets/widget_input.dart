import 'package:flutter/material.dart';

class MyInput extends StatelessWidget {
  TextEditingController controller;
  MyInput({required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLines: null,
      decoration: InputDecoration(
        hintText: 'Mensagem',
        //prefixIcon: Icon(Icons.message),
        border: OutlineInputBorder(
        ),
      ),
    );
  }
}
