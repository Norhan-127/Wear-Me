import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wear_me/core/utils/constant/colors.dart';
import 'package:wear_me/core/utils/constant/images.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  double _opacity = 0.0;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        _opacity = 1.0;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(gradient: AppColors.gradient),
          child: Stack(
            children: [
              Positioned(
                top: MediaQuery.of(context).size.height * 0.43,
                left: MediaQuery.of(context).size.width * 0.2,
                child: AnimatedOpacity(
                    opacity: _opacity,
                    duration: const Duration(seconds: 2),
                    child: SvgPicture.asset(AppImages.wearMeSplash)),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  SvgPicture.asset(
                    AppImages.vectorSplash,
                    fit: BoxFit.fill,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
