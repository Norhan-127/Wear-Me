import 'package:flutter/material.dart';

import '../../../../core/utils/constant/colors.dart';
import '../../../../core/utils/constant/styles.dart';

class CustomSharedHeader extends StatelessWidget {
  const CustomSharedHeader({Key? key, this.onPressed, required this.firstText, required this.secondText}) : super(key: key);
 final Function()? onPressed;
 final String firstText;
 final String secondText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: onPressed,
              icon: const CircleAvatar(
                backgroundColor: AppColors.whiteColor,
                radius: 30,
                child: Icon(
                  Icons.arrow_back_ios_new,
                  size: 20,
                ),
              ),
            ),
          ],
        ),
         Text(
          firstText,
          style: AppTextStyles.ralewayW700,
          textAlign: TextAlign.center,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.height * 0.03),
          child: Text(
            secondText,
            style: AppTextStyles.poppins20.copyWith(color: AppColors.grayColor),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
