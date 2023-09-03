import 'package:flutter/material.dart';

class CustomAuthButton extends StatelessWidget {
  String title;
  final double? height;
  final double? width;
  final double? letterSpacing;
  final Color? colour, textColour;
  final Color borderColor;
  final double fontSize;
  final double? buttonRadius;
  final FontWeight fontWeight;

  // Function callback;
  VoidCallback callback;

  CustomAuthButton(
      {Key? key,
        this.title = "",
        required this.callback,
        this.colour,
        this.letterSpacing,
        this.textColour = Colors.white,
        this.borderColor = Colors.transparent,
        this.height,
        this.width,
        this.fontWeight=FontWeight.normal,

        this.fontSize=14,
        this.buttonRadius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: OutlineInputBorder(
          borderSide:  BorderSide(
              color: borderColor,
              width: 0
          ),
          borderRadius: BorderRadius.circular(buttonRadius!)
      ),
      height: height,
      minWidth: width,
      color: colour,

      onPressed: () {
        callback();
      },
      child: Text(
        title,
        style: TextStyle(fontSize: fontSize, color: textColour,fontWeight:fontWeight ,letterSpacing: letterSpacing ),
      ),
    );
  }
}
