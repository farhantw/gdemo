import 'package:flutter/material.dart';
import 'package:gdemo/widgets/container_widget.dart';

class TaskCompletedWidget extends StatelessWidget {
  const TaskCompletedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ContainerWidget(
      height: 200,
      width: 200,
      dbox: BoxDecoration(
        color: Color.fromARGB(255, 41, 39, 39),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        height: 180,
        width: 180,
        // change padding value to modify width of border
        padding: EdgeInsets.all(4.0),

        child: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 41, 39, 39),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(children: [
            Container(
              color: Colors.red,
              width: 50.0,
              height: 50.0,
              child: Stack(
                children: [
                  Positioned(
                    child: ContainerWidget(
                      height: 20,
                      width: 20,
                      dbox: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.blue,
                        ),
                        color: Color.fromARGB(255, 41, 39, 39),
                        borderRadius: BorderRadius.circular(3),
                      ),
                    ),
                  ),
                  Positioned(
                    // top: 5.0,
                    // right: 5,
                    child: ContainerWidget(
                      height: 20,
                      width: 20,
                      dbox: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Color.fromARGB(255, 17, 224, 207),
                        ),
                        color: Color.fromARGB(255, 41, 39, 39),
                        borderRadius: BorderRadius.circular(3),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text("25"),
            Text("Completed\nTask")
          ]),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 17, 224, 207),
              Color.fromARGB(255, 41, 39, 39),
              Color.fromARGB(255, 41, 39, 39),
              Color.fromARGB(255, 17, 224, 207),
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [0.65, 0.2, 0.99, 0.3],
          ),
        ),
      ),
    );
  }
}
