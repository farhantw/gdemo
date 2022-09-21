import 'package:flutter/material.dart';
import '../../../constant/g_strings.dart';
import '../../../constant/g_styles.dart';
import '../ticket_traveled_controller.dart';
import 'custom_star_rating_widget.dart';

class CustomRatingListWidget extends StatefulWidget {
  const CustomRatingListWidget({Key? key}) : super(key: key);

  @override
  State<CustomRatingListWidget> createState() => _CustomRatingListWidgetState();
}

class _CustomRatingListWidgetState extends State<CustomRatingListWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            InkWell(
              onTap: (() {
                setState(() {
                  TicketTraveledController.getcryingface(1);
                });
              }),
              child: CustomStarRatingWidget(
                  decoration: TicketTraveledController.emoji == 1
                      ? G1Styles.selectratingboxdecoration
                      : G1Styles.unselectratingboxdecoration,
                  rationgIcon: TicketTraveledController.emoji == 1
                      ? "\u{1F622}" //crying face

                      : null),
            ),
            SizedBox(
              width: 10.0,
            ),
            InkWell(
              onTap: (() {
                setState(() {
                  TicketTraveledController.getcryingface(2);
                });
              }),
              child: CustomStarRatingWidget(
                  decoration: TicketTraveledController.emoji == 2
                      ? G1Styles.selectratingboxdecoration
                      : G1Styles.unselectratingboxdecoration,
                  rationgIcon: TicketTraveledController.emoji == 2
                      ? "\u{1F641}" //slightly frowning face

                      : null),
            ),
            SizedBox(
              width: 10.0,
            ),
            InkWell(
              onTap: (() {
                setState(() {
                  TicketTraveledController.getcryingface(3);
                });
              }),
              child: CustomStarRatingWidget(
                  decoration: TicketTraveledController.emoji == 3
                      ? G1Styles.selectratingboxdecoration
                      : G1Styles.unselectratingboxdecoration,
                  rationgIcon: TicketTraveledController.emoji == 3
                      ? "\u{1F610}" //neutral face

                      : null),
            ),
            SizedBox(
              width: 10.0,
            ),
            InkWell(
              onTap: (() {
                setState(() {
                  TicketTraveledController.getcryingface(4);
                });
              }),
              child: CustomStarRatingWidget(
                  decoration: TicketTraveledController.emoji == 4
                      ? G1Styles.selectratingboxdecoration
                      : G1Styles.unselectratingboxdecoration,
                  rationgIcon: TicketTraveledController.emoji == 4
                      ? "\u{1F642}" //slightly smiling face

                      : null),
            ),
            SizedBox(
              width: 10.0,
            ),
            InkWell(
              onTap: (() {
                setState(() {
                  TicketTraveledController.getcryingface(5);
                });
              }),
              child: CustomStarRatingWidget(
                decoration: TicketTraveledController.emoji == 5
                    ? G1Styles.selectratingboxdecoration
                    : G1Styles.unselectratingboxdecoration,
                rationgIcon: TicketTraveledController.emoji == 5
                    ? "\u{1F600}" //grinning face

                    : null,
              ),
            ),
          ],
        ),
        SizedBox(height: 10.0),
        Text(
            TicketTraveledController.emoji == 1
                ? G1String.cryingfacemessage
                : TicketTraveledController.emoji == 2
                    ? G1String.slightlyfrowningfacemessage
                    : TicketTraveledController.emoji == 3
                        ? G1String.neutralfacemessage
                        : TicketTraveledController.emoji == 4
                            ? G1String.slightlysmilingfacemessage
                            : TicketTraveledController.emoji == 5
                                ? G1String.grinningfacemessage
                                : "",
            style: G1Styles.ratingmessagestyle),
      ],
    );
  }
}
