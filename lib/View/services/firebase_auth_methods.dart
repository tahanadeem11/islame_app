import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../HomeScreen/HomeScreen.dart';
import '../Signup/Signup.dart';
import '../otp/OtpController.dart';


final FirebaseAuth auth = FirebaseAuth.instance;
final controller = Get.put(OtpController());
var otpTextField = "";
int? resendToken;

TextEditingController countryPhoneController = TextEditingController();
var phone = "";
class AuthService {
//Determine if the user is authenticated.
  handleAuthState() {
    return StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (BuildContext context, snapshot) {
          if (snapshot.hasData) {
            return  HomeScreen();
          } else {
            return  signup();
          }
        });
  }

  signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn(
        scopes: <String>["email"]).signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication googleAuth = await googleUser!
        .authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

//Sign out
  signOut() {
    FirebaseAuth.instance.signOut();
  }


  signInWithPhone() async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: countryPhoneController.text + phone,
      verificationCompleted:
          (PhoneAuthCredential credential) {},
      verificationFailed: (FirebaseAuthException e) {},
      codeSent: (String verificationId, int? resendToken) {
        signup.verify = verificationId;
        Get.toNamed('/OTP');
      },
        timeout: const Duration(seconds: 25),
        forceResendingToken: resendToken,
        codeAutoRetrievalTimeout: (String verificationId) {
          verificationId = verificationId;
          codeAutoRetrievalTimeout:
              (String verificationId) {};
        });
  }
  GetPhoneOTP() async {
    PhoneAuthCredential credential =
    PhoneAuthProvider.credential(
        verificationId: signup.verify,
        smsCode: otpTextField);
    // Sign the user in (or link) with the credential
    await auth.signInWithCredential(credential);

    Get.toNamed('/Create_SignUp_Profile');
  }
}