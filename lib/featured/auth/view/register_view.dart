import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wear_me/core/router/app_routes.dart';
import 'package:wear_me/core/utils/constant/colors.dart';
import 'package:wear_me/core/utils/constant/styles.dart';
import 'package:wear_me/core/utils/constant/text.dart';
import 'package:wear_me/featured/auth/view/widgets/custom_button_with_google.dart';
import 'package:wear_me/featured/auth/view/widgets/custom_name_text_form_field.dart';
import 'package:wear_me/featured/auth/view/widgets/email_text_form_field.dart';
import 'package:wear_me/featured/auth/view/widgets/shared_header.dart';
import 'package:wear_me/shared/widgets/custom_button.dart';
import 'widgets/password_text_form_field.dart';

class RegisterView extends StatelessWidget {
  RegisterView({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
             CustomSharedHeader(
              firstText: AppText.registerAccount,
              secondText: AppText.fillYourDetails,
              onPressed: (){
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
                    const Text(
                      AppText.yourName,
                      style: AppTextStyles.raleway20,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const CustomNameTextFormField(),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      AppText.email,
                      style: AppTextStyles.raleway20,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomEmailTextFormField(),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      AppText.password,
                      style: AppTextStyles.raleway20,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomPasswordTextFormField(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    CustomButton(
                      txt: AppText.signUp,
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                        }
                      },
                      color: AppColors.mainColor,
                      txtStyle: AppTextStyles.raleway16
                          .copyWith(color: AppColors.whiteColor),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomButtonWithGoogle(
                      txt: AppText.signUpWithGoogle,
                      onTap: () {},
                      color: AppColors.whiteColor,
                      txtStyle: AppTextStyles.raleway16,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.055,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          AppText.alreadyHaveAccount,
                          style: AppTextStyles.raleway20
                              .copyWith(color: AppColors.grayColor),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                          onTap: () {
                            GoRouter.of(context).pushReplacement(AppRouters.kLogin);
                          },
                          child: const Text(
                            AppText.logIn,
                            style: AppTextStyles.raleway20,
                          ),
                        ),
                      ],
                    )
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
