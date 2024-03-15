import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wear_me/featured/auth/view_model/login_cubit/login_cubit.dart';
import '../../../../core/utils/constant/colors.dart';
import '../../../../core/utils/constant/styles.dart';
import '../../../../core/utils/constant/text.dart';

class CustomPasswordTextFormField extends StatelessWidget {
  CustomPasswordTextFormField({Key? key}) : super(key: key);
  final RegExp passwordRegex = RegExp(r'^.{8,}$');

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        var cubit = BlocProvider.of<LoginCubit>(context);
        return TextFormField(
          obscureText:cubit.isVisible == false? true:false,
          enableSuggestions: false,
          autocorrect: false,
          validator: (value) {
            if (value!.isEmpty) {
              return AppText.plsEnterYourPassword;
            } else if (!passwordRegex.hasMatch(value)) {
              return AppText.plsEnterValidPass;
            } else {
              return null;
            }
          },
          cursorColor: AppColors.grayColor,
          decoration: InputDecoration(
            suffixIcon: IconButton(
              color: AppColors.deepMainColor,
              onPressed: () {
                cubit.changePasswordVisibility(!cubit.isVisible);
              },
              icon: cubit.isVisible == true
                  ? const Icon(Icons.visibility_outlined)
                  : const Icon(Icons.visibility_off_outlined),
            ),
            hintText: AppText.typePass,
            fillColor: AppColors.whiteColor,
            filled: true,
            hintStyle:
                AppTextStyles.poppins14.copyWith(color: AppColors.grayColor),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide.none,
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: const BorderSide(color: AppColors.redColor),
            ),
          ),
          onSaved: (value) {},
        );
      },
    );
  }
}
