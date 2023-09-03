import 'package:flutter/material.dart';

import 'constants.dart';
import 'size-config.dart';




const infoStyle = TextStyle(
  color: Colors.black,
  letterSpacing: 0.7,
  fontSize: 16,
  fontWeight: FontWeight.w500,
  height: 1.5,
);
const buttonColor=Color.fromRGBO(12,177, 160, 20);
const blackColor= Color.fromRGBO(74, 74,88,5);
TextStyle cardStyle = const TextStyle(
  color: Colors.black38,
  fontSize: 14,
  fontStyle: FontStyle.italic,
  fontWeight: FontWeight.w400,
  height: 1,
);
 TextStyle subtitleStyle = const TextStyle(
  color: Colors.black45,
  fontSize: 14,
  fontWeight: FontWeight.w400,
  wordSpacing: 1.1,
  letterSpacing: 0.5,
  height: 1,
);
 TextStyle titleStyle = TextStyle(
  fontSize: SizeConfig.textMultiplier*2.7,

  fontWeight: FontWeight.w600,
  color:Colors.black
);
  TextStyle registerStyle = TextStyle(
  fontSize: SizeConfig.textMultiplier*4,
  fontWeight: FontWeight.w600,
  color: Colors.black
);
TextStyle buttonStyle = TextStyle(
  fontSize: 14.0,
  wordSpacing: 0.3,
  letterSpacing: 0.3,
  fontWeight: FontWeight.w500,
  color: AppColors.buttonColor,
);
const normal500Weight = TextStyle(
  fontSize: 14.0,
  fontWeight: FontWeight.w500,
  color:Colors.white
);

const appBarStyle = TextStyle(
    fontSize: 17.0,
    fontWeight: FontWeight.w500,
    color:Colors.white
);

const normalWhiteText = TextStyle(
    fontSize: 13.0,
    fontWeight: FontWeight.w400,
    color:Colors.white
);
const tileStyle = TextStyle(
fontSize: 18.0,
fontWeight: FontWeight.w600,
color:Color.fromRGBO(74, 74,88,5)
);