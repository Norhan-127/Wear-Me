import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wear_me/featured/on_boarding/presentation/view_model/on_boarding_current_page_cubit.dart';

import '../../../../../core/utils/constant/colors.dart';
class CustomSmoothIndicator extends StatelessWidget {
  const CustomSmoothIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: BlocProvider.of<OnBoardingCurrentPageCubit>(context).pageController,
      count: 3,
      effect: const ExpandingDotsEffect(
        spacing: 8.0,
        dotWidth: 23.0,
        dotHeight: 7.0,
        dotColor: AppColors.dotsColor,
        activeDotColor: AppColors.whiteColor,
      ),
    );
  }
}
