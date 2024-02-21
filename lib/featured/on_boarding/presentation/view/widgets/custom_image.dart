import 'package:flutter/material.dart';

class CustomImageWidget extends StatelessWidget {
  const CustomImageWidget({Key? key, required this.image}) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            ClipRect(
              clipBehavior: Clip.antiAlias,
              child: Transform.scale(
                scale: 0.9,
                child: Image.asset(
                  image,
                  fit: BoxFit.contain,
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.5,
                ),
              ),
            ),
          ],
        ),

      ],
    );
  }
}
