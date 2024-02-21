import 'package:flutter/material.dart';

import '../../../../../core/utils/constant/images.dart';
class CustomImageWidget extends StatelessWidget {
  const CustomImageWidget({Key? key}) : super(key: key);

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
                  AppImages.imageTwo,
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
