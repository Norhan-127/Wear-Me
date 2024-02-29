import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wear_me/core/utils/constant/colors.dart';
import 'package:wear_me/core/utils/constant/styles.dart';
import 'package:wear_me/core/utils/constant/text.dart';
import 'package:wear_me/featured/auth/view/widgets/pin_code_text_field.dart';
import 'package:wear_me/featured/auth/view/widgets/shared_header.dart';
import 'package:wear_me/shared/widgets/custom_button.dart';
import '../../../core/router/app_routes.dart';

class OTPVerificationView extends StatelessWidget {
  const OTPVerificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
            ),
            CustomSharedHeader(
              firstText: AppText.OTPVerification,
              secondText: AppText.plsCheckEmail,
              onPressed: () {
                return GoRouter.of(context)
                    .pushReplacement(AppRouters.kPasswordRecovery);
              },
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.06),
              child: const Text(
                AppText.OTPCode,
                style: AppTextStyles.raleway21w600,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            CustomPinCodeTextField(),
            const SizedBox(
              height: 20,
            ),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 10),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.stretch,
               children: [
                 CustomButton(
                     txt: AppText.verify,
                     onTap: () {
                       ScaffoldMessenger.of(context).showSnackBar(
                         const SnackBar(
                           backgroundColor: Colors.green,
                           content: Text(AppText.verificationDone,style: AppTextStyles.poppins20,),
                           duration: Duration(seconds: 2),
                         ),
                       );
                     },
                     color: AppColors.mainColor,
                     txtStyle: AppTextStyles.raleway14),
                 const SizedBox(
                   height: 5,
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text(
                       AppText.resendcodeto,
                       style:
                       AppTextStyles.raleway14.copyWith(color: AppColors.grayColor),
                     ),
                     Text(
                       '00:30',
                       style:
                       AppTextStyles.raleway14.copyWith(color: AppColors.grayColor),
                     ),
                   ],
                 )
               ],
             ),
           ),
          ],
        ),
      ),
    );
  }
}
