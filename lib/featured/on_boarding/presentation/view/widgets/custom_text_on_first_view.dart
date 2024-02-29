import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/constant/colors.dart';
import '../../../../../core/utils/constant/images.dart';
import '../../../../../core/utils/constant/styles.dart';
import '../../../../../core/utils/constant/text.dart';
class CustomTextOnFirstOnBoardingView extends StatelessWidget {
  const CustomTextOnFirstOnBoardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [ Stack(
      alignment: Alignment.center,
      children: [
        Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.174,
            ),
            SvgPicture.asset(
              AppImages.highLight,
              fit: BoxFit.cover,
              height: 33,
            ),
          ],
        ),
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.08,
                ),
                FadeInDownBig(
                  duration: const Duration(milliseconds: 500),
                  child: Text(
                    AppText.welcome,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: AppTextStyles.raleway30.copyWith(
                      color: AppColors.whiteColor,
                      letterSpacing: 3,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    ),
      const SizedBox(
        height: 7,
      ),
      SvgPicture.asset(AppImages.highLightVector),],);
  }
}
