import 'package:flutter/material.dart';
import 'package:wear_me/core/utils/constant/colors.dart';
import 'package:wear_me/featured/on_boarding/presentation/view/widgets/on_boarding_view_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: AppColors.gradient,
        ),
        child: const OnBoardingViewBody(),
      ),
    );
  }
}

