import 'package:flutter/material.dart';
import 'package:gdemo/constant/g_color.dart';
import 'package:gdemo/constant/g_strings.dart';
import 'package:gdemo/constant/g_styles.dart';
import 'package:gdemo/widgets/container_widget.dart';

class TaskCompletedWidget extends StatelessWidget {
  const TaskCompletedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ContainerWidget(
      height: 145,
      width: 145,
      dbox: G1Styles.complettaskcontainerdeco,
      child: ContainerWidget(
          height: 130,
          width: 130,
          // change padding value to modify width of border
          padding: EdgeInsets.all(2.8),
          child: ContainerWidget(
            padding: EdgeInsets.only(top: 20.0, left: 16.0),
            dbox: G1Styles.complettaskcontainerdeco,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ContainerWidget(
                    width: 100,
                    height: 30,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 6,
                          child: ContainerWidget(
                              height: 15,
                              width: 15,
                              dbox: G1Styles.completetaskstackcontainerdeco),
                        ),
                        Positioned(
                          top: 6.0,
                          child: ContainerWidget(
                            height: 15,
                            width: 15,
                            dbox: G1Styles.completetaskstackcontainerdeco,
                            child: Center(
                              child: Icon(Icons.check,
                                  size: 11.0, color: G1Colors.theamcolor),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(G1String.completetasknumber,
                      style: G1Styles.fontWeight600FontSize22),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(G1String.completetaskstring,
                      style: G1Styles.fontWeight400FontSize15)
                ]),
          ),
          dbox: G1Styles.LinearGradientcomplettask),
    );
  }
}
