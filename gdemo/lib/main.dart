import 'package:flutter/material.dart';
import 'package:gdemo/constant/g_color.dart';
import 'package:gdemo/screens/ref_and_earn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'gDemo',
      theme: ThemeData(
        primarySwatch: G1Colors.primaryColorMat,
      ).copyWith(
        scaffoldBackgroundColor: G1Colors.backgroundcolor,
      ),
      home: const ReferendEarn(),
    );
  }
}
