import 'package:flutter/material.dart';
import 'package:gdemo/constant/g_color.dart';

class G1Styles {
  static const fontWeight500FontSize15 = TextStyle(
      color: G1Colors.colorBlack, fontWeight: FontWeight.w500, fontSize: 15);
  static const fontWeight600FontSize19 = TextStyle(
      color: G1Colors.colorBlack, fontWeight: FontWeight.w600, fontSize: 17);
  static const fontWeight600FontSize14 = TextStyle(
      color: G1Colors.appbarfontcolor,
      fontWeight: FontWeight.w600,
      fontSize: 17);

  static var decoratebox = BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(1.0),
      boxShadow: [
        new BoxShadow(
          color: Color.fromARGB(255, 220, 220, 220),
          blurRadius: 9.0,
        ),
      ]);
  static var sharebuttondecoratebox = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(20.0),
    border: Border.all(
      color: G1Colors.sharebuttoncolor,
      width: 1.2,
    ),
  );
}
