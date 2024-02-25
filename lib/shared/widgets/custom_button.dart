import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.txt, required this.onTap, required this.color, required this.txtStyle})
      : super(key: key);
  final String txt;
  final void Function()? onTap;
  final Color color;
  final TextStyle txtStyle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(

        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.1,
            vertical: MediaQuery.of(context).size.height * 0.02),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color:color,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          textAlign: TextAlign.center,
          txt,
          style: txtStyle,
        ),
      ),
    );
  }
}
