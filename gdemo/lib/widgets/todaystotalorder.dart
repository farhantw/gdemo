import 'package:flutter/material.dart';
import 'package:gdemo/constant/g_color.dart';
import 'package:gdemo/constant/g_strings.dart';
import 'package:gdemo/constant/g_styles.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'container_widget.dart';

class TodaysTotalOrder extends StatelessWidget {
  const TodaysTotalOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ContainerWidget(
      width: MediaQuery.of(context).size.width * 0.6,
      height: MediaQuery.of(context).size.height * 0.15,
      dbox: G1Styles.incomeparentcontainerdeco,
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
                    G1String.order,
                    style: G1Styles.fontWeight600FontSize15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 6.0, bottom: 8.0),
                    child: Text(G1String.totalorder,
                        style: G1Styles.fontWeight700FontSize10),
                  ),
                  Text(G1String.totalnumberorder, style: G1Styles.fontSize20),
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
                    G1String.totalnumberorderparsent,
                    style: G1Styles.fontWeightboldFontSize10,
                  ),
                  circularStrokeCap: CircularStrokeCap.round,
                  progressColor: G1Colors.theamcolor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Icon(Icons.call_made_rounded,
                    size: 20.0, color: G1Colors.theamcolor),
              )
            ],
          ),
        ),
      ),
    );
  }
}
