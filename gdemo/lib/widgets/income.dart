import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'container_widget.dart';

class Income extends StatelessWidget {
  const Income({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ContainerWidget(
      width: MediaQuery.of(context).size.width * 0.95,
      height: MediaQuery.of(context).size.height * 0.1,
      dbox: BoxDecoration(
        color: Color.fromARGB(255, 41, 39, 39),
        borderRadius: BorderRadius.circular(26),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundColor: Colors.orange,
            child: Icon(
              Icons.cloud_download_outlined,
              color: Colors.white,
            ),
            radius: 28.0,
          ),
          SizedBox(
            width: 13.0,
          ),
          Container(
            color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Income",
                  style: TextStyle(fontSize: 15, color: Colors.white70),
                ),
                SizedBox(
                  height: 12.0,
                ),
                LinearPercentIndicator(
                  width: MediaQuery.of(context).size.width - 200,
                  animation: true,
                  lineHeight: 6.0,
                  barRadius: Radius.circular(10.0),
                  animationDuration: 2500,
                  percent: 0.8,
                  progressColor: Colors.orange,
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '+\u002465,658',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              Text(
                "84%",
                style: TextStyle(color: Colors.white30),
              )
            ],
          )
        ],
      ),
    );
  }
}
