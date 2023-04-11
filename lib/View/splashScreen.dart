import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:islame_app_new_design/Utils/Theme/app_color.dart';
import 'package:islame_app_new_design/Utils/constants/assets_paths.dart';
import 'package:islame_app_new_design/View/services/firebase_auth_methods.dart';

import 'Signup/Signup.dart';
import 'onboarding Screen/OnboardingScreen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  final String assetName = 'assets/images/iconpdf.svg';
//TODO setting the splash timer
  startTime() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => AuthService().handleAuthState(),
        ),
      );
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    startTime();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold (
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                   AppImages.backGropund,
              fit: BoxFit.fill,
              ),
      ),
            Container(
              height: double.infinity,
              width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      child: Image.asset(
                        AppImages.splashTop,
                      ),
                    ),

                    SizedBox(
                      height: 20,
                    ),


                    Container(
                      child: Image.asset(
                        AppImages.splashLogo,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(

                      child: Image.asset(
                        AppImages.bissmillahnew,
                      ),
                    ),


                  ],
                ),

                Container(
                  child: Image.asset(
                    AppImages.bottomImage,
                  ),
                ),
              ],
            )
            )
          ],
        ),
      ),
    );
  }
}