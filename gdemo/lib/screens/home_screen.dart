import 'package:flutter/material.dart';
import 'package:gdemo/widgets/container_widget.dart';
import 'package:gdemo/widgets/income.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../widgets/fromyesterdaywidget.dart';
import '../widgets/taskcompletedwidget.dart';
import '../widgets/todaystotalorder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TodaysTotalOrder(),
          SizedBox(
            height: 40.0,
          ),
          Income(),
          SizedBox(
            height: 40.0,
          ),
          TaskCompletedWidget(),
          SizedBox(
            height: 40.0,
          ),
          FromYesterdayWidget()
        ],
      ),
    );
  }
}
