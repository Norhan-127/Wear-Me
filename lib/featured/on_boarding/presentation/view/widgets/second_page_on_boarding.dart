import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:wear_me/core/utils/constant/colors.dart';
import 'package:wear_me/core/utils/constant/text.dart';
import 'package:wear_me/featured/on_boarding/presentation/view/widgets/custom_image.dart';
import 'package:wear_me/featured/on_boarding/presentation/view/widgets/custom_shadow.dart';
import 'package:wear_me/featured/on_boarding/presentation/view/widgets/custom_tow_text.dart';
import '../../../../../core/utils/constant/images.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.15,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.07),
                          child: Image.asset(
                            AppImages.onBoardingLolo1,
                            color: AppColors.whiteColor,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width * 0.07),
                      child: Image.asset(
                        AppImages.smile,
                        color: AppColors.whiteColor.withOpacity(0.6),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            FadeInDown(
              duration: const Duration(milliseconds: 550),
                child: const CustomImageWidget(image: AppImages.imageTwo)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.435,
                ),
                 Padding(
                  padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.3),
                  child: FadeInUp(
                    duration: const Duration(milliseconds: 600),
                      child: const CustomShadow(dx: -20, dy: -10)),
                ),
              ],
            ),
          ],
        ),
        const CustomTwoText(
            firstText: AppText.letUsStart, secondText: AppText.smart)
      ],
    );
  }
}
