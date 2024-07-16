import 'package:go_router/go_router.dart';
import 'package:petshare/src/features/home/view/home_screen.dart';
import 'package:petshare/src/features/splash/view/splash_screen.dart';

sealed class AppPages {
  static const toSplashScreen = '/';
  static const toHomeScreen = '/toHomeScreen';
}

sealed class AppRoutes {
  static final GoRouter router = GoRouter(
    initialLocation: AppPages.toSplashScreen,
    routes: _routes,
  );

  static final _routes = [
    GoRoute(
      path: AppPages.toSplashScreen,
      builder: (_, __) => const SplashScreen(),
    ),
    GoRoute(
      path: AppPages.toHomeScreen,
      builder: (_, __) => const HomeScreen(),
    ),
  ];
}
