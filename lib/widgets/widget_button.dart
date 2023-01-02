import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
   MyButton(this.texto, {required this.onPressed});

  final String texto;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        onPrimary: Colors.white,
        primary: Color(0xff44545c),
        minimumSize: Size(88, 50),

      ),
      onPressed: onPressed,
      child: Text(texto),
    );
  }
}
