import 'package:flutter/material.dart';
import 'package:gdemo/constant/g_color.dart';

class G1Styles {
  static const fontWeight500FontSize15 = TextStyle(
      color: G1Colors.colorBlack, fontWeight: FontWeight.w500, fontSize: 15);
  static const fontSize7 = TextStyle(fontSize: 7.0);
  static const fontWeight500FontSize10 = TextStyle(
      color: G1Colors.colorBlack, fontWeight: FontWeight.w500, fontSize: 12);
  static const elevetedbuttonfontstyle = TextStyle(
      color: G1Colors.colorWhite, fontWeight: FontWeight.w500, fontSize: 12);
  static const fontWeight600FontSize17 = TextStyle(
      color: G1Colors.colorBlack, fontWeight: FontWeight.w600, fontSize: 17);
  static const fontWeight600FontSize14 = TextStyle(
      color: G1Colors.appbarfontcolor,
      fontWeight: FontWeight.w600,
      fontSize: 17);
  static const ratingmessagestyle = TextStyle(
      fontWeight: FontWeight.w300,
      color: Color.fromARGB(136, 10, 10, 10),
      fontSize: 13.0);

  static var decoratebox = BoxDecoration(
      color: G1Colors.colorWhite,
      borderRadius: BorderRadius.circular(10.0),
      boxShadow: const [
        BoxShadow(
          color: Color.fromARGB(255, 220, 220, 220),
          blurRadius: 9.0,
        ),
      ]);
  static var buttonstyle = ElevatedButton.styleFrom(
      minimumSize: const Size(double.infinity, 35),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(1.0),
      ));
  static var unselectratingboxdecoration = BoxDecoration(
    border: Border.all(
      width: 1.8,
      color: Color.fromARGB(255, 236, 236, 236),
    ),
    borderRadius: BorderRadius.circular(3.0),
  );
  static var selectratingboxdecoration = BoxDecoration(
    border: Border.all(
      width: 1.8,
      color: G1Colors.primaryColorMat,
    ),
    borderRadius: BorderRadius.circular(3.0),
  );
  static var contentdecorationbox = BoxDecoration(
    border: Border.all(
      width: 0.2,
      color: G1Colors.sharebuttoncolor,
    ),
    borderRadius: BorderRadius.circular(10.0),
  );
  static var commentdecorateboxbutton = BoxDecoration(
      color: G1Colors.colorWhite,
      borderRadius: BorderRadius.circular(5.0),
      boxShadow: const [
        BoxShadow(
          color: Color.fromARGB(255, 196, 195, 195),
          blurRadius: 9.0,
        ),
      ]);
  static var bottomsheetboxdecoration = BoxDecoration(
      color: G1Colors.primaryColorMat,
      borderRadius: BorderRadius.circular(10.0),
      boxShadow: const [
        BoxShadow(
          color: Color.fromARGB(255, 220, 220, 220),
          blurRadius: 9.0,
        ),
      ]);
  static var sharebuttondecoratebox = BoxDecoration(
    color: G1Colors.colorWhite,
    borderRadius: BorderRadius.circular(20.0),
    border: Border.all(
      color: G1Colors.sharebuttoncolor,
      width: 1.2,
    ),
  );

  static var bottomsheetshap = const RoundedRectangleBorder(
    borderRadius: BorderRadius.vertical(
      top: Radius.circular(20),
    ),
  );
}
