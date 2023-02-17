import 'package:get/get_navigation/src/routes/get_route.dart';

import '../../View/onboarding Screen/OnboardingScreen.dart';
import '../../View/splashScreen.dart';

class Routes {
  
  static final routes = [
    GetPage(name: '/', page: () => const SplashScreen()),
    GetPage(name: '/OnboardingScreen', page: () => OnboardingScreen()),
  ];
}
