import 'package:flutter/material.dart';

import '../../../../../core/utils/constant/colors.dart';
import '../../../../../core/utils/constant/styles.dart';

class CustomTwoText extends StatelessWidget {
  const CustomTwoText({Key? key, required this.firstText, required this.secondText}) : super(key: key);
  final String firstText;
  final String secondText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.03,
              right: MediaQuery.of(context).size.width * 0.03),
          child: Text(
           firstText,
            maxLines: 2,
            textAlign: TextAlign.center,
            style: AppTextStyles.ralewayW700.copyWith(
              color: AppColors.whiteColor,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.05,
              right: MediaQuery.of(context).size.width * 0.05),
          child: Text(
            secondText,
            maxLines: 2,
            textAlign: TextAlign.center,
            style: AppTextStyles.poppins.copyWith(
              color: AppColors.whiteColor,
            ),
          ),
        )
      ],
    );
  }
}
