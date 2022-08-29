import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget svgImage (String assetName, double hight, double widget){
  return SvgPicture.asset(
    assetName,

    height: hight,
    width: Checkbox.width,

  );
}