import 'package:flutter/material.dart';
import 'package:wear_me/core/utils/constant/colors.dart';
import 'package:wear_me/core/utils/constant/styles.dart';
import 'package:wear_me/core/utils/constant/text.dart';
import 'package:wear_me/shared/widgets/custom_button.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const CircleAvatar(
                    backgroundColor: AppColors.whiteColor,
                    radius: 30,
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
            const Text(
              AppText.helloAgain,
              style: AppTextStyles.ralewayW700,
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.height * 0.03),
              child: Text(
                AppText.fillYourDetails,
                style: AppTextStyles.poppins20
                    .copyWith(color: AppColors.grayColor),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Form(
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
                    TextFormField(
                      cursorColor: AppColors.grayColor,
                      decoration: InputDecoration(
                        hintText: AppText.xyz,
                        fillColor: AppColors.whiteColor,
                        filled: true,
                        hintStyle: AppTextStyles.poppins14
                            .copyWith(color: AppColors.grayColor),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
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
                    TextFormField(
                      cursorColor: AppColors.grayColor,
                      decoration: InputDecoration(
                        hintText: AppText.typePass,
                        fillColor: AppColors.whiteColor,
                        filled: true,
                        hintStyle: AppTextStyles.poppins14
                            .copyWith(color: AppColors.grayColor),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          AppText.passwordRecovery,
                          style: AppTextStyles.poppins14
                              .copyWith(color: AppColors.grayColor),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    CustomButton(
                      txt: AppText.signIn,
                      onTap: () {},
                      color: AppColors.mainColor,
                      txtStyle: AppTextStyles.raleway16
                          .copyWith(color: AppColors.whiteColor),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomButton(
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
                        const Text(
                          AppText.createAnAccount,
                          style: AppTextStyles.raleway20,
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
