import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:wear_me/core/utils/constant/colors.dart';

class CustomPinCodeTextField extends StatelessWidget {
  CustomPinCodeTextField({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormState>();
  final StreamController<ErrorAnimationType> errorController = StreamController<ErrorAnimationType>();
  late final String code;

  @override
  Widget build(BuildContext context) {

    return Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric( vertical: 8,horizontal: 20,),
          child: PinCodeTextField(
            appContext: context,
            length: 4,
            errorAnimationController: errorController,
            obscureText: false,
            animationType: AnimationType.scale,
            cursorColor: AppColors.white,
            pinTheme: PinTheme(
              activeColor: AppColors.whiteColor,
              inactiveFillColor:AppColors.whiteColor,
              inactiveColor:AppColors.whiteColor,
              shape: PinCodeFieldShape.box,
              selectedFillColor: AppColors.lightMainColor,
              borderRadius: BorderRadius.circular(12),
              fieldHeight: 56,
              fieldWidth: 70,
              activeFillColor: AppColors.whiteColor,
            ),
            animationDuration: const Duration(milliseconds: 300),
            enableActiveFill: true,
            onCompleted: (code) {
              this.code=code;
              print("Completed");
            },
            onChanged: (value) {
              print(value);
            },
            beforeTextPaste: (text) {
              print("Allowing to paste $text");
              //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
              //but you can show anything you want here, like your pop up saying wrong paste format or etc
              return true;
            },
          ),
        ));
  }
}


