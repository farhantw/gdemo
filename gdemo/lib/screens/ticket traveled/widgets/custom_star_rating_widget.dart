import 'package:flutter/material.dart';

import '../../../constant/g_styles.dart';
import '../../../widgets/container_widget.dart';

class CustomStarRatingWidget extends StatelessWidget {
  Widget rationgIcon;
  CustomStarRatingWidget({Key? key, required this.rationgIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ContainerWidget(
      width: 30,
      dbox: G1Styles.ratingboxdecoration,
      child: rationgIcon,
    );
  }
}
