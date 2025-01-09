import 'package:degitalhubsport/features/auth/ui/login_screen.dart';
import 'package:degitalhubsport/features/choose_sport/ui/c.dart';
import 'package:degitalhubsport/features/onboarding/onboarding_screen.dart';
import 'package:go_router/go_router.dart';
import '../../features/splash/splash_screen.dart';

class ConstantsRoutes {
  static const String splashScreen = "/";
  static const String loginScreen = "/login";
  static const String onBoardingScreen = "/onboarding";
  static const String chooseSportScreen = "/chooseSport";

}

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: ConstantsRoutes.splashScreen,
    routes: [
      GoRoute(
        path: ConstantsRoutes.splashScreen,
        builder: (context, state) {
          return SplashScreen();
        },
      ),
      GoRoute(
        path: ConstantsRoutes.onBoardingScreen,
        builder: (context, state) {
          return OnboardingScreen();
        },
      ),
      GoRoute(
        path: ConstantsRoutes.loginScreen,
        builder: (context, state) {
          return LoginScreen();
        },
      ),
      GoRoute(
        path: ConstantsRoutes.chooseSportScreen,
        builder: (context, state) {
          return ChooseSportScreen();
        },
      ),
      // Example for additional routes:
      // GoRoute(
      //   path: ConstantsRoutes.productPage,
      //   builder: (context, state) {
      //     final prod = state.extra as Product;
      //     return ProductDetailsScreen(product: prod);
      //   },
      // ),
    ],
  );
}
