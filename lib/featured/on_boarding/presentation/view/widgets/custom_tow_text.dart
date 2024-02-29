import 'package:flutter/material.dart';

import '../../../../../core/utils/constant/colors.dart';
import '../../../../../core/utils/constant/styles.dart';

class CustomTwoText extends StatefulWidget {
  const CustomTwoText(
      {Key? key, required this.firstText, required this.secondText})
      : super(key: key);
  final String firstText;
  final String secondText;

  @override
  State<CustomTwoText> createState() => _CustomTwoTextState();
}

class _CustomTwoTextState extends State<CustomTwoText> {
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
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.12),
          child: AnimatedOpacity(
            opacity: _opacity,
            duration: const Duration(milliseconds: 100),
            child: Text(
              widget.firstText,
              maxLines: 2,
              textAlign: TextAlign.center,
              style: AppTextStyles.raleway34w700.copyWith(
                color: AppColors.whiteColor,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.02935),
          child: AnimatedOpacity(
            opacity: _opacity,
            duration: const Duration(seconds: 1),
            child: Text(
              widget.secondText,
              maxLines: 2,
              textAlign: TextAlign.center,
              style: AppTextStyles.poppins20.copyWith(
                color: AppColors.whiteColor,
              ),
            ),
          ),
        )
      ],
    );
  }
}
