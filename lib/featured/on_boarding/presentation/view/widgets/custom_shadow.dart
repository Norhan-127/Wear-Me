import 'package:flutter/material.dart';

class CustomShadow extends StatelessWidget {
  const CustomShadow({Key? key, required this.dx, required this.dy}) : super(key: key);
  final double dx;
  final double dy;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
        color: Colors.transparent,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(600),
        boxShadow:  [
          BoxShadow(
            blurRadius: 10,
            blurStyle: BlurStyle.inner,
            color: const Color.fromARGB(0x42, 0x10, 0x10, 0x10),
            spreadRadius: 6,
            offset: Offset(dx,dy),
          ),
        ],
      ),
    );
  }
}
