import 'package:flutter/material.dart';
import 'package:wear_me/featured/on_boarding/presentation/view/widgets/back_ground_icons.dart';
import 'package:wear_me/featured/on_boarding/presentation/view/widgets/custom_shadow.dart';
import 'package:wear_me/featured/on_boarding/presentation/view/widgets/first_on_boarding_img.dart';
import '../../../../../core/utils/constant/images.dart';
import 'custom_text_on_first_view.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            const CustomTextOnFirstOnBoardingView()
          ],
        ),
        const FirstOnBoardingImg(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
            ),
            const CustomShadow(dx:-200 ,dy:-20 ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
            ),
            Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.07),
                child:
                    const CustomBackGroundSmallImages(image: AppImages.smile)),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.65,
                ),
                const CustomBackGroundSmallImages(
                    image: AppImages.onBoardingLolo1)
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
            ),
            Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.07),
                child: const CustomBackGroundSmallImages(
                    image: AppImages.onBoardingLolo2)),
          ],
        ),
      ],
    );
  }
}
