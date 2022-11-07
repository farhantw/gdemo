import 'package:flutter/material.dart';
import 'package:gdemo/constant/g_color.dart';

class G1Styles {
  static const stylewhite30 = TextStyle(color: Colors.white30);
  static const fontSize15white70 =
      TextStyle(fontSize: 15, color: Colors.white70);
  static const fontSize15white = TextStyle(fontSize: 15, color: Colors.white);
  static const fontWeight500FontSize15 = TextStyle(
      color: G1Colors.colorBlack, fontWeight: FontWeight.w500, fontSize: 15);
  static const fontSize7 = TextStyle(fontSize: 7.0);
  static const fontWeight500FontSize10 = TextStyle(
      color: G1Colors.colorBlack, fontWeight: FontWeight.w500, fontSize: 12);
  static const fontWeight700FontSize10 = TextStyle(
      color: G1Colors.white24, fontWeight: FontWeight.w700, fontSize: 10.0);
  static const fontWeightboldFontSize10 = TextStyle(
      color: Color.fromARGB(255, 45, 211, 211),
      fontWeight: FontWeight.bold,
      fontSize: 10.0);
  static const elevetedbuttonfontstyle = TextStyle(
      color: G1Colors.colorWhite, fontWeight: FontWeight.w500, fontSize: 12);
  static const signinsignupfontstyle =
      TextStyle(color: G1Colors.colorWhite, fontSize: 16);
  static const fontWeight600FontSize17 = TextStyle(
    color: G1Colors.colorBlack,
    // fontWeight: FontWeight.w600,
    fontSize: 24,
  );
  static const fontSize20 =
      TextStyle(color: G1Colors.theamcolor, fontSize: 20.0);
  static const fontWeight500FontSize18 = TextStyle(
      fontSize: 18, fontWeight: FontWeight.w500, color: G1Colors.white24);
  static const fontWeight600FontSize25 =
      TextStyle(fontSize: 25, fontWeight: FontWeight.w600, color: Colors.white);
  static const fontWeight400FontSize15 =
      TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white);
  static const fontWeight600FontSize15 = TextStyle(
      color: Colors.white, fontSize: 15.0, fontWeight: FontWeight.w600);
  static const fontWeight600FontSize22 =
      TextStyle(fontSize: 22, fontWeight: FontWeight.w600, color: Colors.white);

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
      minimumSize: const Size(double.infinity, 50),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6.0),
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
  static var incomeparentcontainerdeco = BoxDecoration(
    color: G1Colors.backgroundwidgetcolor,
    borderRadius: BorderRadius.circular(26),
  );
  static var completetaskstackcontainerdeco = BoxDecoration(
    border: Border.all(
      width: 1,
      color: Color.fromARGB(255, 17, 224, 207),
    ),
    color: Color.fromARGB(255, 41, 39, 39),
    borderRadius: BorderRadius.circular(5),
  );
  static var LinearGradientcomplettask = BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    gradient: LinearGradient(
      colors: [
        Color.fromARGB(255, 17, 224, 207),
        Color.fromARGB(255, 41, 39, 39),
        Color.fromARGB(255, 41, 39, 39),
        Color.fromARGB(255, 17, 224, 207),
      ],
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      stops: [0.65, 0.2, 0.99, 0.3],
    ),
  );
  static var yesterdaywidgetdecor = BoxDecoration(
    border: Border.all(width: 2, color: G1Colors.theamcolor),
    color: Color.fromARGB(255, 41, 39, 39),
    borderRadius: BorderRadius.circular(7),
  );
  static var yesterdaywidgetdecor1 = BoxDecoration(
    color: Color.fromARGB(255, 41, 39, 39),
    borderRadius: BorderRadius.circular(23),
  );
  static var complettaskcontainerdeco = BoxDecoration(
    color: Color.fromARGB(255, 41, 39, 39),
    borderRadius: BorderRadius.circular(15),
  );

  static var bottomsheetshap = const RoundedRectangleBorder(
    borderRadius: BorderRadius.vertical(
      top: Radius.circular(20),
    ),
  );
}
