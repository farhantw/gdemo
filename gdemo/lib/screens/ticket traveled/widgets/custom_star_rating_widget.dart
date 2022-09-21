import 'package:flutter/material.dart';
import 'package:gdemo/constant/g_color.dart';
import '../../../widgets/container_widget.dart';

class CustomStarRatingWidget extends StatelessWidget {
  String? rationgIcon;
  Decoration decoration;
  CustomStarRatingWidget(
      {Key? key, required this.rationgIcon, required this.decoration})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ContainerWidget(
        width: 26,
        height: 26,
        dbox: decoration,
        // dbox: G1Styles.ratingboxdecoration,
        child: rationgIcon != null
            ? Text(
                rationgIcon ?? "", //grinning face
                style: TextStyle(fontSize: 17),
              )
            : Icon(
                Icons.star_border,
                size: 19.0,
                color: G1Colors.primaryColorMat,
              ));
  }
}
