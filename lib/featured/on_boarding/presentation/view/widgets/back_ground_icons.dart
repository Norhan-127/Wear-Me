import 'package:flutter/material.dart';
import '../../../../../core/utils/constant/colors.dart';
class CustomBackGroundSmallImages extends StatelessWidget {
  const CustomBackGroundSmallImages({Key? key, required this.image}) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return  Image.asset(
      image,
      color: AppColors.whiteColor.withOpacity(0.6),
    );
  }
}
