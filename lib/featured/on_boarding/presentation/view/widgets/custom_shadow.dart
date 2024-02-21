import 'package:flutter/material.dart';

class CustomShadow extends StatelessWidget {
  const CustomShadow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: const BoxDecoration(
        shape: BoxShape.rectangle,
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            blurStyle: BlurStyle.inner,
            color: Color.fromARGB(0x4D, 0x10, 0x10, 0x10),
            spreadRadius: 6,
            offset: Offset(-230, -10),
          ),
        ],
      ),
    );
  }
}
