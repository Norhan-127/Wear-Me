import 'package:flutter/material.dart';
import '../../../../core/utils/constant/colors.dart';
import '../../../../core/utils/constant/styles.dart';
import '../../../../core/utils/constant/text.dart';

class CustomPasswordTextFormField extends StatelessWidget {
  CustomPasswordTextFormField({Key? key}) : super(key: key);
  final RegExp passwordRegex = RegExp(r'^.{8,}$');

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: true,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter your password';
        } else if (!passwordRegex.hasMatch(value)) {
          return 'Password must be at least 8 characters long';
        } else {
          return null;
        }
      },
      cursorColor: AppColors.grayColor,
      decoration: InputDecoration(
        hintText: AppText.typePass,
        fillColor: AppColors.whiteColor,
        filled: true,
        hintStyle: AppTextStyles.poppins14.copyWith(color: AppColors.grayColor),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide.none,
        ),
      ),
      onSaved: (value) {},
    );
  }
}
