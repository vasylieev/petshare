import 'package:go_router/go_router.dart';
import 'package:petshare/src/features/add_post//view/add_post_screen.dart';
import 'package:petshare/src/features/auth/sign_in/view/sign_in_screen.dart';
import 'package:petshare/src/features/auth/sign_up/view/sign_up_page.dart';
import 'package:petshare/src/features/dashboard/view/dashboard_screen.dart';
import 'package:petshare/src/features/home/view/home_screen.dart';
import 'package:petshare/src/features/splash/view/splash_screen.dart';

sealed class AppPages {
  static const toSplashScreen = '/';
  static const toSignInScreen = '/toSignInScreen';
  static const toSignUpScreen = '/toSignUpScreen';
  static const toDashboardScreen = '/toDashboardScreen';
  static const toHomeScreen = '/toHomeScreen';
  static const toAddPetScreen = '/toAddPostScreen';
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
      path: AppPages.toSignInScreen,
      builder: (_, __) => const SignInScreen(),
    ),
    GoRoute(
      path: AppPages.toSignUpScreen,
      builder: (_, __) => const SignUpScreen(),
    ),
    GoRoute(
      path: AppPages.toDashboardScreen,
      builder: (_, __) => const DashboardScreen(),
    ),
    GoRoute(
      path: AppPages.toHomeScreen,
      builder: (_, __) => const HomeScreen(),
    ),
    GoRoute(
      path: AppPages.toAddPetScreen,
      builder: (_, __) => const AddPostScreen(),
    ),
  ];
}
