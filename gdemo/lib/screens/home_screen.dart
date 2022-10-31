import 'package:flutter/material.dart';
import 'package:gdemo/widgets/container_widget.dart';
import 'package:gdemo/widgets/income.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../widgets/todaystotalorder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TodaysTotalOrder(),
          SizedBox(
            height: 40.0,
          ),
          Income(),
        ],
      ),
    );
  }
}
