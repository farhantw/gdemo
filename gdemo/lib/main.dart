import 'package:flutter/material.dart';
import 'package:gdemo/constant/g_color.dart';
import 'package:gdemo/screens/home_screen.dart';
import 'package:gdemo/screens/post_and_comment.dart';
import 'package:gdemo/screens/ref_and_earn.dart';
import 'package:gdemo/screens/signin%20signup/signin_signup_screen.dart';
import 'package:gdemo/screens/ticket%20traveled/ticket_traveled_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'gDemo',
      theme: ThemeData(primarySwatch: G1Colors.primaryColorMat).copyWith(
        scaffoldBackgroundColor: G1Colors.backgroundcolor,
      ),
      // home: const ReferendEarn(),
      // home: const PostandComment(),
      // home: const TicketTraveledScreen(),
      home: const SigninSignupScreen(),
      // home: const HomeScreen(),
    );
  }
}
