import 'package:go_router/go_router.dart';
import '../../featured/splash/presentation/views/splash_view.dart';

abstract class AppRouters {
  static final GoRouter router = GoRouter(routes: [
    GoRoute(path: '/', builder: (context, state) => const SplashView()),
  ]);
}
