import 'package:flutter/material.dart';
import 'package:gdemo/constant/g_styles.dart';
import 'package:gdemo/screens/ticket%20traveled/ticket_traveled_controller.dart';
import 'package:gdemo/screens/ticket%20traveled/widgets/custom_star_rating_widget.dart';
import 'package:gdemo/widgets/container_widget.dart';

import '../../constant/g_strings.dart';

class TicketTraveledScreen extends StatefulWidget {
  const TicketTraveledScreen({Key? key}) : super(key: key);

  @override
  State<TicketTraveledScreen> createState() => _TicketTraveledScreenState();
}

class _TicketTraveledScreenState extends State<TicketTraveledScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: InkWell(
            onTap: (() {
              showModalBottomSheet<void>(
                context: context,
                builder: (BuildContext context) {
                  return StatefulBuilder(
                    builder: (BuildContext context, setState) => Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Feedback"),
                            Icon(Icons.clear_rounded)
                          ],
                        ),
                        Text(
                            "We hope you've had a pleasant journey. How did you feel?"),
                        Row(
                          children: [
                            InkWell(
                              onTap: (() {
                                setState(() {
                                  TicketTraveledController.getcryingface();
                                });
                              }),
                              child: CustomStarRatingWidget(
                                rationgIcon:
                                    TicketTraveledController.cryingfacebool
                                        ? Text(
                                            "\u{1F622}", //crying face
                                            style: TextStyle(fontSize: 25),
                                          )
                                        : Icon(Icons.star_border),
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            InkWell(
                              onTap: (() {
                                setState(() {
                                  TicketTraveledController
                                      .getslightlyfrowningface();
                                });
                              }),
                              child: CustomStarRatingWidget(
                                rationgIcon: TicketTraveledController
                                        .slightlyfrowningfacebool
                                    ? Text(
                                        "\u{1F641}", //slightly frowning face
                                        style: TextStyle(fontSize: 25),
                                      )
                                    : Icon(Icons.star_border),
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            InkWell(
                              onTap: (() {
                                setState(() {
                                  TicketTraveledController.getneutralface();
                                });
                              }),
                              child: CustomStarRatingWidget(
                                rationgIcon:
                                    TicketTraveledController.neutralfacebool
                                        ? Text(
                                            "\u{1F610}", //neutral face
                                            style: TextStyle(fontSize: 25),
                                          )
                                        : Icon(Icons.star_border),
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            InkWell(
                              onTap: (() {
                                setState(() {
                                  TicketTraveledController
                                      .getslightlysmilingface();
                                });
                              }),
                              child: CustomStarRatingWidget(
                                rationgIcon: TicketTraveledController
                                        .slightlysmilingfacebool
                                    ? Text(
                                        "\u{1F642}", //slightly smiling face
                                        style: TextStyle(fontSize: 25),
                                      )
                                    : Icon(Icons.star_border),
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            InkWell(
                              onTap: (() {
                                setState(() {
                                  TicketTraveledController.getgrinningface();
                                });
                              }),
                              child: CustomStarRatingWidget(
                                rationgIcon:
                                    TicketTraveledController.grinningfacebool
                                        ? Text(
                                            "\u{1F600}", //grinning face
                                            style: TextStyle(fontSize: 25),
                                          )
                                        : Icon(Icons.star_border),
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            G1String.submit,
                            style: G1Styles.fontWeight600FontSize14,
                          ),
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(double.infinity, 42),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                // shape: G1Styles.bottomsheetshap,
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
