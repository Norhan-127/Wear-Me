import 'package:go_router/go_router.dart';
import 'package:wear_me/featured/on_boarding/presentation/view/on_boarding_view.dart';
import '../../featured/splash/presentation/views/splash_view.dart';

abstract class AppRouters {
  static const kSplash = '/';
  static const kOnBoarding = '/onBoarding';
  static final GoRouter router = GoRouter(routes: [
    GoRoute(
      path: kSplash,
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kOnBoarding,
      builder: (context, state) => const OnBoardingView(),
    ),
  ]);
}
