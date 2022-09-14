import 'package:flutter/material.dart';

import '../constant/g_styles.dart';
import '../models/option_model.dart';
import 'container_widget.dart';

class ListviewWidget extends StatelessWidget {
  const ListviewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: options.length,
      itemBuilder: (BuildContext context, int index) {
        return ContainerWidget(
            margin: const EdgeInsets.symmetric(vertical: 5.0),
            height: MediaQuery.of(context).size.height * 0.13,
            dbox: G1Styles.decoratebox,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Stack(alignment: Alignment.center, children: [
                      const Icon(Icons.messenger_rounded),
                      Positioned(
                        bottom: 6,
                        child: Text(
                          "${index + 1}",
                          style: const TextStyle(color: Colors.white),
                        ),
                      )
                    ]),
                    const SizedBox(
                      height: 40.0,
                      width: 3.0,
                    ),
                    Text(options[index].title,
                        style: G1Styles.fontWeight500FontSize15),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(
                    options[index].subtitle,
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ));
      },
    );
  }
}
