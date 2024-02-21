import 'package:flutter/material.dart';

import '../../../../../core/utils/constant/images.dart';
class FirstOnBoardingImg extends StatelessWidget {
  const FirstOnBoardingImg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.16,
        ),
        ClipRect(
          clipBehavior: Clip.antiAlias,
          child: Transform.scale(
            scale: 1,
            child: Image.asset(
              AppImages.imageOne,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
