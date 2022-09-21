import 'package:flutter/material.dart';
import 'package:gdemo/constant/g_color.dart';
import 'package:gdemo/constant/g_styles.dart';
import 'package:gdemo/screens/ticket%20traveled/widgets/custom_rating_list_widget.dart';
import 'package:gdemo/widgets/container_widget.dart';
import '../../constant/g_strings.dart';

class TicketTraveledScreen extends StatefulWidget {
  const TicketTraveledScreen({Key? key}) : super(key: key);

  @override
  State<TicketTraveledScreen> createState() => _TicketTraveledScreenState();
}

class _TicketTraveledScreenState extends State<TicketTraveledScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: InkWell(
            onTap: (() {
              showModalBottomSheet<void>(
                context: context,
                builder: (BuildContext context) {
                  return StatefulBuilder(
                    builder: (BuildContext context, setState) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 15.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                G1String.feedback,
                                style: G1Styles.fontWeight600FontSize17,
                              ),
                              Icon(
                                Icons.clear_rounded,
                                size: 20.0,
                                color: G1Colors.primaryColorMat,
                              )
                            ],
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 16.0, bottom: 9.0),
                            child: Text(G1String.journeymessage),
                          ),
                          CustomRatingListWidget(),
                          TextField(),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15.0),
                            child: Text(
                              G1String.uploadimage,
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black54,
                                  fontSize: 9.0),
                            ),
                          ),
                          Container(
                              width: 100,
                              height: 100,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.add),
                                  Text(G1String.addimage)
                                ],
                              ),
                              decoration: BoxDecoration(border: Border.all())),
                          Spacer(),
                          ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                G1String.submit,
                                style: G1Styles.elevetedbuttonfontstyle,
                              ),
                              style: G1Styles.buttonstyle),
                        ],
                      ),
                    ),
                  );
                },
              );
            }),
            child: ContainerWidget(
              height: MediaQuery.of(context).size.height * 0.07,
              dbox: G1Styles.decoratebox,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("Feedback"), Icon(Icons.message)],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
