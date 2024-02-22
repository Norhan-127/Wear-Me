import 'package:flutter/material.dart';
import '../../../../../core/utils/constant/colors.dart';
import '../../../../../core/utils/constant/styles.dart';

class CustomButton extends StatelessWidget {
  CustomButton({Key? key, required this.txt, required this.onTap})
      : super(key: key);
  final String txt;
  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.009,),
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.35,
            vertical: MediaQuery.of(context).size.height * 0.015),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          txt,
          style: AppTextStyles.raleway14,
        ),
      ),
    );
  }
}
