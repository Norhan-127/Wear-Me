import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:wear_me/featured/on_boarding/presentation/view/on_boarding_view.dart';
import 'package:wear_me/featured/on_boarding/presentation/view_model/on_boarding_current_page_cubit.dart';
import '../../featured/auth/view/login/login_view.dart';
import '../../featured/splash/presentation/views/splash_view.dart';

abstract class AppRouters {
  static const kSplash = '/';
  static const kOnBoarding = '/onBoarding';
  static const kLogin = '/login';
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
      builder: (context, state) => const LoginView(),
    ),
  ]);
}
