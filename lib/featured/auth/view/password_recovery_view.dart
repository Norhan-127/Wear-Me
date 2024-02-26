import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wear_me/core/utils/constant/images.dart';
import 'package:wear_me/featured/auth/view/widgets/email_text_form_field.dart';
import 'package:wear_me/featured/auth/view/widgets/shared_header.dart';
import '../../../core/router/app_routes.dart';
import '../../../core/utils/constant/colors.dart';
import '../../../core/utils/constant/styles.dart';
import '../../../core/utils/constant/text.dart';
import '../../../shared/widgets/custom_button.dart';

class PasswordRecoveryView extends StatelessWidget {
  PasswordRecoveryView({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            CustomSharedHeader(
              firstText: AppText.forgotPassword,
              secondText: AppText.enterYourEmailResetPass,
              onPressed: () {
                return GoRouter.of(context).pushReplacement(AppRouters.kLogin);
              },
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CustomEmailTextFormField(),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    CustomButton(
                      txt: AppText.resetPassword,
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return Dialog(
                              shadowColor: AppColors.grayColor,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius:  BorderRadius.circular(16),
                                  color: AppColors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 30),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: AppColors.mainColor,
                                        maxRadius: 35,
                                        child: Image.asset(
                                          AppImages.email,
                                          fit: BoxFit.cover,
                                          height: 30,
                                          width: 30,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      const Text(
                                        AppText.checkYourEmail,
                                        style: AppTextStyles.raleway20,
                                        textAlign: TextAlign.center,
                                      ),
                                      const Text(
                                        AppText.sentPassRecovery,
                                        style: AppTextStyles.poppins14,
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                      color: AppColors.mainColor,
                      txtStyle: AppTextStyles.raleway16
                          .copyWith(color: AppColors.whiteColor),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
