import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTitle extends StatelessWidget {
  MyTitle(this.param, {Key? key}) : super(key: key);

  final String param;

  @override
  Widget build(BuildContext context) {
    return Text(
      param,
      style: GoogleFonts.montserrat(
        color: Colors.black,
        fontSize: 24,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
