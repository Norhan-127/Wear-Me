import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:wear_me/core/router/app_routes.dart';
import 'package:wear_me/core/utils/constant/colors.dart';
import 'package:wear_me/core/utils/constant/styles.dart';
import 'package:wear_me/core/utils/constant/text.dart';
import 'package:wear_me/shared/widgets/custom_button.dart';
import 'package:wear_me/featured/on_boarding/presentation/view/widgets/custom_smooth_indicator.dart';
import 'package:wear_me/featured/on_boarding/presentation/view/widgets/second_page_on_boarding.dart';
import 'package:wear_me/featured/on_boarding/presentation/view/widgets/third_on_boarding_view.dart';
import '../../../../../core/utils/constant/images.dart';
import '../../view_model/on_boarding_current_page_cubit.dart';
import 'first_page_on_boarding.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<OnBoardingCurrentPageCubit>(context);
    return BlocBuilder<OnBoardingCurrentPageCubit, OnBoardingCurrentPageState>(
      builder: (context, state) {
        return Stack(
          alignment: Alignment.center,
          children: [
            PageView(
              controller: cubit.pageController,
              children: const [
                FirstPage(),
                SecondPage(),
                ThirdPageView(),
              ],
              onPageChanged: (c) {
                cubit.getCurrentPageViewIndex(c);
              },
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
            cubit.currentPage == 0
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.455,
                      ),
                      const CustomSmoothIndicator(),
                    ],
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.6,
                      ),
                      const CustomSmoothIndicator()
                    ],
                  ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.8,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: CustomButton(
                    color: AppColors.white,
                    txtStyle: AppTextStyles.raleway16,
                    txt: cubit.currentPage == 0
                        ? AppText.getStarted
                        : AppText.next,
                    onTap: () {
                      if (cubit.currentPage < 2) {
                        cubit.getCurrentPageViewIndex(++cubit.currentPage);
                        cubit.pageController.animateToPage(
                          cubit.currentPage,
                          duration: const Duration(milliseconds: 100),
                          curve: Curves.decelerate,
                        );
                      } else {
                        GoRouter.of(context).pushReplacement(AppRouters.kLogin);
                      }
                    },
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
