import 'package:get/get_navigation/src/routes/get_route.dart';

import '../../View/Drawer/About us.dart';
import '../../View/Drawer/Display Settings.dart';
import '../../View/Drawer/Pricing.dart';
import '../../View/Drawer/Privacy Policy.dart';
import '../../View/Drawer/QuizResult.dart';
import '../../View/Drawer/endDrawer/Faqs.dart';
import '../../View/Drawer/endDrawer/User Profile.dart';
import '../../View/Forget&reset/Forget Password.dart';
import '../../View/Forget&reset/Reset Password.dart';
import '../../View/HomeScreen/HomeScreen.dart';
import '../../View/HomeScreen_Index/Learning_Index/Guidence.dart';
import '../../View/HomeScreen_Index/Learning_Index/Lesson_Directory/LessonNo_3.dart';
import '../../View/HomeScreen_Index/Learning_Index/Lesson_Directory/LessonNo_4.dart';
import '../../View/HomeScreen_Index/Learning_Index/Lesson_Directory/Lesson_No_2.dart';
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
    GetPage(name: '/Aboutus', page: () => Aboutus()),
    GetPage(name: '/Pricing', page: () => Pricing()),
    GetPage(name: '/PrivayScreen', page: () => PrivayScreen()),
    GetPage(name: '/UserProfile', page: () => UserProfile()),
    GetPage(name: '/DisplaySetting', page: () => DisplaySetting()),
    GetPage(name: '/Faqs', page: () => Faqs()),
    GetPage(name: '/QuizResult', page: () => QuizResult()),
    GetPage(name: '/LessonNo_2', page: () => LessonNo_2()),
    GetPage(name: '/LessonNo_2', page: () => LessonNo_3()),
    GetPage(name: '/LessonNo_2', page: () => LessonNo_4()),
  ];
}
