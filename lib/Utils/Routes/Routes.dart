import 'package:get/get_navigation/src/routes/get_route.dart';

import '../../View/Forget&reset/Forget Password.dart';
import '../../View/Forget&reset/Reset Password.dart';
import '../../View/HomeScreen/HomeScreen.dart';
import '../../View/HomeScreen_Index/Learning_Index/Guidence.dart';
import '../../View/HomeScreen_Index/Learning_Index/Practice.dart';
import '../../View/HomeScreen_Index/Learning_Index/QuizScreen.dart';
import '../../View/HomeScreen_Index/Learning_Index/word.dart';
import '../../View/Signup/CreateProfile.dart';
import '../../View/Signup/Login.dart';
import '../../View/Signup/Signup.dart';
import '../../View/onboarding Screen/OnboardingScreen.dart';
import '../../View/otp/OTP.dart';
import '../../View/splashScreen.dart';

class Routes {
  
  static final routes = [
    GetPage(name: '/', page: () => const SplashScreen()),
    GetPage(name: '/signup', page: () =>  signup()),
    GetPage(name: '/OnboardingScreen', page: () => OnboardingScreen()),
    GetPage(name: '/OTP', page: () => OTP()),
    GetPage(name: '/CreateProfile', page: () => CreateProfile()),
    GetPage(name: '/ForgetPassword', page: () => ForgetPassword()),
    GetPage(name: '/Resetpassword', page: () => Resetpassword()),
    GetPage(name: '/HomeScreen', page: () => HomeScreen()),
    GetPage(name: '/Login', page: () => Login()),
    GetPage(name: '/Words', page: () => Words()),
    GetPage(name: '/Guidence', page: () => Guidence()),
    GetPage(name: '/Practice', page: () => Practice()),
    GetPage(name: '/QuizScreen', page: () => QuizScreen()),
  ];
}
