import 'package:flutter/material.dart';
import 'package:gdemo/constant/g_color.dart';
import 'package:gdemo/constant/g_strings.dart';
import 'package:gdemo/constant/g_styles.dart';

import 'container_widget.dart';

class FromYesterdayWidget extends StatelessWidget {
  const FromYesterdayWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ContainerWidget(
        width: MediaQuery.of(context).size.width * 0.48,
        height: MediaQuery.of(context).size.height * 0.12,
        dbox: G1Styles.yesterdaywidgetdecor1,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(G1String.fromyesterday,
                style: G1Styles.fontWeight500FontSize18),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ContainerWidget(
                  height: 25,
                  width: 25,
                  dbox: G1Styles.yesterdaywidgetdecor,
                  child: Center(
                    child: Icon(
                      Icons.trending_up_rounded,
                      size: 16.0,
                      color: G1Colors.theamcolor,
                    ),
                  ),
                ),
                SizedBox(
                  width: 12.0,
                ),
                Text(G1String.yesterdaynumber,
                    style: G1Styles.fontWeight600FontSize25)
              ],
            )
          ],
        ));
  }
}
