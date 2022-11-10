import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant/g_strings.dart';
import '../../constant/g_styles.dart';
import '../../widgets/container_widget.dart';

class SigninSignupScreen extends StatefulWidget {
  const SigninSignupScreen({Key? key}) : super(key: key);

  @override
  State<SigninSignupScreen> createState() => _SigninSignupScreenState();
}

class _SigninSignupScreenState extends State<SigninSignupScreen> {
  @override
  bool _value = true;
  int signin = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: InkWell(
            onTap: (() {
              showModalBottomSheet<void>(
                isDismissible: true,
                isScrollControlled: true,
                context: context,
                shape: const RoundedRectangleBorder(
                  // <-- SEE HERE
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(12.0),
                  ),
                ),
                builder: (BuildContext context) {
                  return StatefulBuilder(
                    builder: (BuildContext context, setState) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: EdgeInsets.only(
                              bottom: MediaQuery.of(context).viewInsets.bottom),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 15.0,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    G1String.signinsignup,
                                    style: GoogleFonts.lato(
                                        textStyle:
                                            G1Styles.fontWeight600FontSize17),
                                  ),
                                  Icon(
                                    Icons.clear_rounded,
                                    size: 20.0,
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 25.0,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.circle,
                                    size: 7.0,
                                  ),
                                  SizedBox(
                                    width: 6.0,
                                  ),
                                  Text(
                                    G1String.offer,
                                    style: GoogleFonts.lato(),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 6.0, bottom: 6.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.circle,
                                      size: 7.0,
                                    ),
                                    SizedBox(
                                      width: 6.0,
                                    ),
                                    Text(
                                      G1String.reward,
                                      style: GoogleFonts.lato(),
                                    )
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.circle,
                                    size: 7.0,
                                  ),
                                  SizedBox(
                                    width: 6.0,
                                  ),
                                  Text(
                                    G1String.tripmanagement,
                                    style: GoogleFonts.lato(),
                                  )
                                ],
                              ),
                              signin == 0
                                  ? Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 20.0, bottom: 18.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    _value = true;
                                                  });
                                                },
                                                child: ContainerWidget(
                                                  width: 15.0,
                                                  height: 15.0,
                                                  dbox: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: _value
                                                          ? Color.fromARGB(
                                                              255, 255, 123, 0)
                                                          : Colors.white,
                                                      border: Border.all(
                                                          color: Color.fromARGB(
                                                              255, 255, 123, 0),
                                                          width: 2.0)),
                                                  child: Icon(
                                                    Icons.check,
                                                    size: 10.0,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 7.0,
                                              ),
                                              Text(
                                                G1String.usephone,
                                                style: GoogleFonts.lato(),
                                              ),
                                              SizedBox(
                                                width: 12.0,
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    _value = false;
                                                  });
                                                },
                                                child: ContainerWidget(
                                                    width: 15.0,
                                                    height: 15.0,
                                                    dbox: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color: _value == false
                                                            ? Color.fromARGB(
                                                                255,
                                                                255,
                                                                123,
                                                                0)
                                                            : Colors.white,
                                                        border: Border.all(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    255,
                                                                    123,
                                                                    0),
                                                            width: 2.0)),
                                                    child: Icon(
                                                      Icons.check,
                                                      size: 10.0,
                                                      color: Colors.white,
                                                    )),
                                              ),
                                              SizedBox(
                                                width: 7.0,
                                              ),
                                              Text(
                                                G1String.useemail,
                                                style: GoogleFonts.lato(),
                                              ),
                                            ],
                                          ),
                                        ),
                                        ContainerWidget(
                                          height: 50,
                                          dbox: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              border: Border.all(
                                                color: Color.fromARGB(
                                                    255, 230, 229, 229),
                                              )),
                                          child: Row(
                                            children: [
                                              _value
                                                  ? Container(
                                                      height: double.infinity,
                                                      width: 80.0,
                                                      decoration: BoxDecoration(
                                                        gradient:
                                                            LinearGradient(
                                                          colors: [
                                                            Color.fromARGB(255,
                                                                230, 229, 229),
                                                            Colors.white,
                                                          ],
                                                          begin: Alignment
                                                              .bottomCenter,
                                                          end: Alignment
                                                              .topCenter,
                                                        ),
                                                        border: Border(
                                                          right: BorderSide(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    230,
                                                                    229,
                                                                    229),
                                                            width: 2.0,
                                                          ),
                                                        ),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                top: 4.0,
                                                                left: 12),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              "ISD",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .grey,
                                                                  fontSize:
                                                                      10.0),
                                                            ),
                                                            Text(
                                                              "+91",
                                                              style: GoogleFonts
                                                                  .lato(),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    )
                                                  : SizedBox(),
                                              Expanded(
                                                child: TextField(
                                                  decoration: InputDecoration(
                                                      contentPadding:
                                                          EdgeInsets.all(8),
                                                      border: InputBorder.none,
                                                      labelText: _value
                                                          ? 'Mobile No.'
                                                          : 'Email',
                                                      labelStyle: TextStyle(
                                                          color: Colors.grey)),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 15.0, bottom: 15.0),
                                          child: ElevatedButton(
                                              onPressed: () {
                                                setState(() {
                                                  signin = 1;
                                                });
                                              },
                                              child: Text(
                                                G1String.signinusingpass,
                                                style: GoogleFonts.lato(
                                                  textStyle: G1Styles
                                                      .signinsignupfontstyle,
                                                ),
                                              ),
                                              style: G1Styles.buttonstyle),
                                        ),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              G1String.or,
                                              style: GoogleFonts.lato(
                                                textStyle:
                                                    TextStyle(fontSize: 15),
                                              ),
                                            )),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 12.0, bottom: 12.0),
                                          child: ElevatedButton(
                                              onPressed: () {},
                                              child: Text(
                                                G1String.sendotp,
                                                style: GoogleFonts.lato(
                                                  textStyle: G1Styles
                                                      .signinsignupfontstyle,
                                                ),
                                              ),
                                              style: G1Styles.buttonstyle),
                                        ),
                                      ],
                                    )
                                  : Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("data"),
                                            IconButton(
                                                onPressed: () {
                                                  setState(() {
                                                    signin = 0;
                                                  });
                                                },
                                                icon: Icon(Icons.edit))
                                          ],
                                        ),
                                        Container(
                                          height: 50,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              border: Border.all(
                                                color: Color.fromARGB(
                                                    255, 230, 229, 229),
                                              )),
                                          child: TextField(
                                            decoration: InputDecoration(
                                                contentPadding:
                                                    EdgeInsets.all(8),
                                                border: InputBorder.none,
                                                labelText: 'Email',
                                                labelStyle: TextStyle(
                                                    color: Colors.grey)),
                                          ),
                                        ),
                                        Text("Send OTP"),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 12.0, bottom: 12.0),
                                          child: ElevatedButton(
                                              onPressed: () {},
                                              child: Text(
                                                G1String.verify,
                                                style: GoogleFonts.lato(
                                                  textStyle: G1Styles
                                                      .signinsignupfontstyle,
                                                ),
                                              ),
                                              style: G1Styles.buttonstyle),
                                        ),
                                      ],
                                    )
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              );
            }),
            child: ContainerWidget(
              height: MediaQuery.of(context).size.height * 0.07,
              dbox: G1Styles.decoratebox,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("Feedback"), Icon(Icons.message)],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
