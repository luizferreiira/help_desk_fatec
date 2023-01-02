import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyText extends StatelessWidget {
  const MyText(this.param, {Key? key}) : super(key: key);

  final String param;

  @override
  Widget build(BuildContext context) {
    return Text(
      param,
      textDirection: TextDirection.rtl,
      textAlign: TextAlign.justify,

      style: GoogleFonts.montserrat(
        fontSize: 20,
        color: Color(0xff44545c),
      ),
    );
  }
}
