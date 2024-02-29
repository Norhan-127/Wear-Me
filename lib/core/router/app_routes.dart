import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:wear_me/featured/auth/view/otp_verification_view.dart';
import 'package:wear_me/featured/auth/view/password_recovery_view.dart';
import 'package:wear_me/featured/auth/view/register_view.dart';
import 'package:wear_me/featured/on_boarding/presentation/view/on_boarding_view.dart';
import 'package:wear_me/featured/on_boarding/presentation/view_model/on_boarding_current_page_cubit.dart';
import '../../featured/auth/view/login_view.dart';
import '../../featured/splash/presentation/views/splash_view.dart';

abstract class AppRouters {
  static const kSplash = '/';
  static const kOnBoarding = '/onBoarding';
  static const kLogin = '/login';
  static const kRegister = '/register';
  static const kPasswordRecovery = '/password';
  static const kOtp = '/otp';
  static final GoRouter router = GoRouter(routes: [
    GoRoute(
      path: kSplash,
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kOnBoarding,
      builder: (context, state) => BlocProvider(
        create: (context) => OnBoardingCurrentPageCubit(),
        child: const OnBoardingView(),
      ),
    ),
    GoRoute(
      path: kLogin,
      builder: (context, state) => LoginView(),
    ),
    GoRoute(
      path: kRegister,
      builder: (context, state) => RegisterView(),
    ),GoRoute(
      path: kPasswordRecovery,
      builder: (context, state) => PasswordRecoveryView(),
    ),GoRoute(
      path: kOtp,
      builder: (context, state) => const OTPVerificationView(),
    ),
  ]);
}
