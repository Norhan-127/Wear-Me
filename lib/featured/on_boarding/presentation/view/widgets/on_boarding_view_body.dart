import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wear_me/core/utils/constant/colors.dart';
import 'package:wear_me/featured/on_boarding/presentation/view/widgets/second_page_on_boarding.dart';
import '../../../../../core/utils/constant/images.dart';
import 'first_page_on_boarding.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({Key? key}) : super(key: key);

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody>
    with TickerProviderStateMixin {
  late PageController _pageViewController;
  late TabController _tabController;
  int _currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageViewController = PageController();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _pageViewController.dispose();
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        PageView(
          controller: _pageViewController,
          children: const [
            FirstPage(),
            SecondPage(),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.35,
            ),
            SvgPicture.asset(
              AppImages.vectorSplash,
              fit: BoxFit.fill,
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.455,
            ),
            SmoothPageIndicator(
              controller: _pageViewController,
              count: 3,
              effect: const ExpandingDotsEffect(
                spacing: 8.0,
                dotWidth: 23.0,
                dotHeight: 7.0,
                dotColor: AppColors.dotsColor,
                activeDotColor: AppColors.whiteColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
