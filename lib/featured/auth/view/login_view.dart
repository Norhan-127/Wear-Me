import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:wear_me/core/router/app_routes.dart';
import 'package:wear_me/core/utils/constant/colors.dart';
import 'package:wear_me/core/utils/constant/styles.dart';
import 'package:wear_me/core/utils/constant/text.dart';
import 'package:wear_me/featured/auth/view/widgets/custom_button_with_google.dart';
import 'package:wear_me/featured/auth/view/widgets/email_text_form_field.dart';
import 'package:wear_me/featured/auth/view/widgets/shared_header.dart';
import 'package:wear_me/featured/auth/view_model/login_cubit/login_cubit.dart';
import 'package:wear_me/shared/widgets/custom_button.dart';
import 'widgets/password_text_form_field.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            CustomSharedHeader(
              firstText: AppText.helloAgain,
              secondText: AppText.fillYourDetails,
              onPressed: () {
                return GoRouter.of(context)
                    .pushReplacement(AppRouters.kOnBoarding);
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
                    BlocProvider(
                      create: (context) => LoginCubit(),
                      child: CustomPasswordTextFormField(),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            GoRouter.of(context)
                                .pushReplacement(AppRouters.kPasswordRecovery);
                          },
                          child: Text(
                            AppText.passwordRecovery,
                            style: AppTextStyles.poppins14
                                .copyWith(color: AppColors.grayColor),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    CustomButton(
                      txt: AppText.signIn,
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
                      txt: AppText.signInWithGoogle,
                      onTap: () {},
                      color: AppColors.whiteColor,
                      txtStyle: AppTextStyles.raleway16,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          AppText.newUser,
                          style: AppTextStyles.raleway20
                              .copyWith(color: AppColors.grayColor),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                          onTap: () {
                            GoRouter.of(context)
                                .pushReplacement(AppRouters.kRegister);
                          },
                          child: const Text(
                            AppText.createAnAccount,
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
