import 'package:flutter/material.dart';
import '../../../../core/utils/constant/colors.dart';
import '../../../../core/utils/constant/styles.dart';
import '../../../../core/utils/constant/text.dart';

class CustomEmailTextFormField extends StatelessWidget {
  CustomEmailTextFormField({Key? key}) : super(key: key);
  final RegExp emailRegex =
      RegExp(r'\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}\b');

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      cursorColor: AppColors.grayColor,
      decoration: InputDecoration(
        hintText: AppText.xyz,
        fillColor: AppColors.whiteColor,
        filled: true,
        hintStyle: AppTextStyles.poppins14.copyWith(color: AppColors.grayColor),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide.none,
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(color: AppColors.redColor),
        ),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return AppText.plsEnterYourEmail;
        } else if (!emailRegex.hasMatch(value)) {
          return AppText.plsEnterValidEmail;
        } else {
          return null;
        }
      },
      onSaved: (value) {},
    );
  }
}
