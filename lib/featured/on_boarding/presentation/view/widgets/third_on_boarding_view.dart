import 'package:flutter/material.dart';
import 'package:wear_me/core/utils/constant/colors.dart';
import 'package:wear_me/core/utils/constant/text.dart';
import 'package:wear_me/featured/on_boarding/presentation/view/widgets/custom_image.dart';
import 'package:wear_me/featured/on_boarding/presentation/view/widgets/custom_shadow.dart';
import 'package:wear_me/featured/on_boarding/presentation/view/widgets/custom_tow_text.dart';
import '../../../../../core/utils/constant/images.dart';

class ThirdPageView extends StatelessWidget {
  const ThirdPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.07,
                      vertical: MediaQuery.of(context).size.height * 0.09),
                  child: Image.asset(AppImages.smile2,
                      color: AppColors.whiteColor),
                ),
              ],
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.07),
              child: const CustomImageWidget(image: AppImages.circleVector,),
            ),
            const CustomImageWidget(image: AppImages.imageThree,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.435,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 140),
                  child: CustomShadow(dx: -20, dy: -35),
                ),
              ],
            ),
          ],
        ),
        const CustomTwoText(
            firstText: AppText.power, secondText: AppText.thereAreManyBeautiful)
      ],
    );
  }
}
