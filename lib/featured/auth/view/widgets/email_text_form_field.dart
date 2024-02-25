import 'package:flutter/material.dart';
import '../../../../core/utils/constant/colors.dart';
import '../../../../core/utils/constant/styles.dart';
import '../../../../core/utils/constant/text.dart';

class CustomEmailTextFormField extends StatelessWidget {
  CustomEmailTextFormField({Key? key}) : super(key: key);
  final RegExp emailRegex = RegExp(r'\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}\b');
  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter your email';
        } else if (!emailRegex.hasMatch(value)) {
          return 'Please enter a valid email';
        } else {
          return null;
        }
      },
      onSaved: (value) {

      },
    );
  }
}
