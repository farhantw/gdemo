import 'package:flutter/material.dart';
import 'package:gdemo/constant/g_strings.dart';
import '../constant/g_color.dart';
import '../constant/g_styles.dart';
import '../widgets/container_widget.dart';
import '../widgets/listview_widget.dart';

class ReferendEarn extends StatelessWidget {
  const ReferendEarn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          G1String.referandEarn,
          style: G1Styles.fontWeight600FontSize14,
        ),
        centerTitle: true,
        leading: IconButton(
          color: G1Colors.colorWhite,
          icon: const Icon(
            Icons.arrow_back,
            color: G1Colors.appbarfontcolor,
          ),
          onPressed: () => print('Back'),
        ),
      ),
      body: SingleChildScrollView(
        child: ContainerWidget(
          margin: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ContainerWidget(
                height: MediaQuery.of(context).size.height * 0.16,
                dbox: G1Styles.decoratebox,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 13.0, top: 10.0),
                      child: Text(G1String.referyourfriend),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    ContainerWidget(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.height * 0.05,
                      dbox: G1Styles.sharebuttondecoratebox,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Spacer(),
                          Text(
                            G1String.refercode,
                            style: G1Styles.fontWeight600FontSize17,
                          ),
                          Expanded(
                              child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 5.0),
                                    child: Icon(
                                      Icons.share,
                                      color: G1Colors.primaryColorMat,
                                    ),
                                  ))),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ContainerWidget(
                height: MediaQuery.of(context).size.height * 0.075,
                dbox: G1Styles.decoratebox,
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                margin: const EdgeInsets.symmetric(vertical: 14.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Icon(
                          Icons.gpp_good_outlined,
                          color: G1Colors.primaryColorMat,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          G1String.myEarnings,
                          style: G1Styles.fontWeight600FontSize17,
                        )
                      ],
                    ),
                    const Icon(
                      Icons.navigate_next_outlined,
                      color: G1Colors.primaryColorMat,
                      size: 28.0,
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 12.0, bottom: 6.0),
                child: Text(
                  G1String.howitworks,
                  style: G1Styles.fontWeight600FontSize17,
                ),
              ),
              const ListviewWidget(),
              const SizedBox(
                height: 22.0,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  G1String.referNow,
                  style: G1Styles.fontWeight600FontSize14,
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 42),
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
