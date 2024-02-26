import 'package:flutter/material.dart';
import 'package:wear_me/core/utils/constant/text.dart';

import '../../../../core/utils/constant/colors.dart';
import '../../../../core/utils/constant/styles.dart';

class CustomNameTextFormField extends StatelessWidget {
  const CustomNameTextFormField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.grayColor,
      decoration: InputDecoration(
        hintText: 'xxxxxxx',
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
          return AppText.plsEnterYourName;
        } else {
          return null;
        }
      },
      onSaved: (value) {},
    );
  }
}
