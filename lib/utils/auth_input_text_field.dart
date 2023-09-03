import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AuthTextInputField extends StatefulWidget {
  final Color textColor;
  final String? labelText;
  final String hintText;
  final double? hintSize;
  final Color hintcolor;
  final Color bordercolor;
  final double radius;
  final bool isPassword;
  final Color fillColor;
  final Color cursorColor;
  final TextEditingController? textEditingController;
  final TextInputType inputType;
  final TextInputAction inputAction;
  ValueChanged<String>? onChanged;
  final suffixIcon;
  final prefixIcon;
  final enabled;

  AuthTextInputField({
    Key? key,
    required this.hintText,
    this.textEditingController,
    this.isPassword = false,
    this.hintSize,
    this.hintcolor = Colors.grey,
    this.fillColor = Colors.transparent,
    this.textColor = Colors.black,
    this.cursorColor = Colors.black,
    this.inputType = TextInputType.text,
    this.inputAction = TextInputAction.next,
    this.suffixIcon,
    this.prefixIcon,
    this.enabled,
    this.labelText,
    this.onChanged,
    this.radius = 10,
    this.bordercolor = Colors.black,
  }) : super(key: key);

  @override
  State<AuthTextInputField> createState() => _TextInputFieldViewState();
}

class _TextInputFieldViewState extends State<AuthTextInputField> {
  bool isObscure = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isObscure = widget.isPassword == true;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: widget.enabled,
      style: TextStyle(color: widget.textColor),
      onChanged: widget.onChanged,
      autofocus: true,
      controller: widget.textEditingController,
      keyboardType: widget.inputType,
      textInputAction: widget.inputAction,
      obscureText: isObscure,
      // enableInteractiveSelection: true,


      decoration: InputDecoration(

        filled: true,
        fillColor: widget.fillColor,
        contentPadding: const EdgeInsets.only(top: 14,left: 8 ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.radius),
            borderSide: BorderSide(color: widget.bordercolor)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.radius),
            borderSide: BorderSide(color: widget.bordercolor)),
        hintText: widget.hintText,
        hintStyle:
        TextStyle(fontSize: widget.hintSize, color: widget.hintcolor),
        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.isPassword
            ? GestureDetector(
            onTap: () {
              setState(() {
                isObscure = !isObscure;
              });
            },
            child: isObscure
                ?  const Icon(
              Icons.remove_red_eye,
              size: 18,
              color: Color(0xff00426E),
            )
                :  const Icon(
              CupertinoIcons.eye_slash,
              size: 18,
              color: Color(0xff00426E),
            )

        )
            : widget.suffixIcon,
      ),
      cursorColor: widget.cursorColor,
    );
  }
}
