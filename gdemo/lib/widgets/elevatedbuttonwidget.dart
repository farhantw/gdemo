import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant/g_strings.dart';
import '../constant/g_styles.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        child: Text(
          G1String.verify,
          style: GoogleFonts.lato(
            textStyle: G1Styles.signinsignupfontstyle,
          ),
        ),
        style: G1Styles.buttonstyle);
  }
}
