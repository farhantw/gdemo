import 'package:flutter/material.dart';
import 'package:gdemo/models/option_model.dart';

import '../constant/g_color.dart';
import '../constant/g_styles.dart';

class ReferendEarn extends StatelessWidget {
  const ReferendEarn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Image.network(
            "https://cdn.pixabay.com/photo/2022/08/28/10/40/butterfly-7416308_960_720.jpg",
            fit: BoxFit.fitWidth),

        // backgroundColor: G1Colors.primaryColorMat,
        title: Text('Menu Options'),
        centerTitle: true,
        leading: IconButton(
          color: G1Colors.colorWhite,
          icon: Icon(
            Icons.arrow_back,
          ),
          onPressed: () => print('Back'),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(10.0),
            width: double.infinity,
            height: 100.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(10.0),
            width: double.infinity,
            height: 100.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              children: [
                Row(
                  children: [
                    Icon(Icons.gpp_good_outlined),
                    Text('My Earnings')
                  ],
                ),
                Icon(Icons.navigate_next_outlined)
              ],
            ),
          ),
          Text('How it works?'),
          Expanded(
            child: ListView.builder(
              itemCount: options.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(10.0),
                    width: double.infinity,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Stack(alignment: Alignment.center, children: [
                              Icon(Icons.messenger_rounded),
                              Positioned(
                                bottom: 6,
                                child: Text(
                                  "${index + 1}",
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            ]),
                            SizedBox(
                              height: 40.0,
                            ),
                            Text(options[index].title,
                                style: G1Styles.fontWeight500FontSize13),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Text(
                            options[index].subtitle,
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ));
              },
            ),
          ),
        ],
      ),
    );
  }
}
