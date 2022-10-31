import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'container_widget.dart';

class TodaysTotalOrder extends StatelessWidget {
  const TodaysTotalOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ContainerWidget(
      width: MediaQuery.of(context).size.width * 0.6,
      height: MediaQuery.of(context).size.height * 0.15,
      dbox: BoxDecoration(
        color: Color.fromARGB(255, 41, 39, 39),
        borderRadius: BorderRadius.circular(26),
      ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Orders",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w600),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 6.0, bottom: 8.0),
                    child: Text(
                      "Total Order Today",
                      style: TextStyle(
                          color: Color.fromARGB(255, 28, 26, 26),
                          fontWeight: FontWeight.w700,
                          fontSize: 10.0),
                    ),
                  ),
                  Text(
                    "1000",
                    style: TextStyle(
                        color: Color.fromARGB(255, 45, 211, 211),
                        fontSize: 20.0),
                  ),
                ],
              ),
              SizedBox(
                width: 20.0,
              ),
              Align(
                alignment: Alignment.center,
                child: CircularPercentIndicator(
                  radius: 35.0,
                  lineWidth: 3.5,
                  animation: true,
                  backgroundColor: Colors.black,
                  percent: 0.80,
                  center: new Text(
                    "80.0%",
                    style: new TextStyle(
                        color: Color.fromARGB(255, 45, 211, 211),
                        fontWeight: FontWeight.bold,
                        fontSize: 10.0),
                  ),
                  circularStrokeCap: CircularStrokeCap.round,
                  progressColor: Color.fromARGB(255, 45, 211, 211),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Icon(
                  Icons.call_made_rounded,
                  size: 20.0,
                  color: Color.fromARGB(255, 45, 211, 211),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
