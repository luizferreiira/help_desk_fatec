import 'package:flutter/material.dart';

class MyTextLight extends StatelessWidget {
  MyTextLight(this.param, {Key? key}) : super(key: key);

  String param;

  @override
  Widget build(BuildContext context) {
    return Text(
      param,
      style: TextStyle(
        fontSize: 16,
        color: Colors.white,
      ),
    );
  }
}
