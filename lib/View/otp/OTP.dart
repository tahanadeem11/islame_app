import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islame_app_new_design/Utils/widget/AppText/App%20Text.dart';
import 'package:islame_app_new_design/View/Signup/Signup.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

import '../../Utils/Theme/app_color.dart';
import '../../Utils/constants/assets_paths.dart';
import '../services/firebase_auth_methods.dart';
import 'OtpController.dart';
class OTP extends StatefulWidget {
   OTP({Key? key}) : super(key: key);

  @override
  State<OTP> createState() => _OTPState();

}

class _OTPState extends State<OTP> {
  final controller = Get.put(OtpController());
  var otpTextField = "";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
            ),
                    Container(
                      child: Image.asset(
                        AppImages.splashLogo,
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("verify code",
                      style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                        fontSize: 24,
                        color: Colors.white,
                      ),
                      ),
                    SizedBox(
                      height: 5,
                    ),
                    Text("We will send a One Type Password on your",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: Colors.white,
                    ),),
                    SizedBox(
                      height: 5,
                    ),
                    Text("mobile number +92 300 00 000",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: Colors.white,
                    ),),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30,right: 30),
                      child: Column(
                        children: [
                          Container(
                            width: Get.width,
                            child: OTPTextField(
                              length: 6,
                              otpFieldStyle: OtpFieldStyle(

                                borderColor: AppColors.WHITE_COLOR,
                                backgroundColor:
                                AppColors.Field_and_Button_Color.withOpacity(.35),
                                focusBorderColor: AppColors.WHITE_COLOR,
                              ),
                              width: MediaQuery.of(context).size.width,
                              fieldWidth: 50,
                              style:  TextStyle(
                                  color: AppColors.WHITE_COLOR,
                                  fontSize: 20),
                              outlineBorderRadius: 5,
                              textFieldAlignment: MainAxisAlignment.spaceAround,
                              fieldStyle: FieldStyle.box,
                              onCompleted: (pin) {
                                //  print("Completed: " + pin);
                                controller.showMethod();
                              },
                              onChanged: (val) {
                                otpTextField = val;
                              },
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height:   48,
                            width: Get.width,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.25),
                                    spreadRadius: 0,
                                    blurRadius: 4,
                                    offset: Offset(0, 4), // changes position of shadow
                                  ),
                                ],
                                color: AppColors.Field_and_Button_Color,
                                border: Border.all(color: AppColors.WHITE_COLOR,
                                    width: 1
                                )
                            ),
                            child: TextButton(onPressed: () async {

                              PhoneAuthCredential credential =
                              PhoneAuthProvider.credential(
                                  verificationId: signup.verify,
                                  smsCode: otpTextField);
                              // Sign the user in (or link) with the credential
                              await auth.signInWithCredential(credential);

                              //AuthService().signInWithGoogle();
                              Get.toNamed('/HomeScreen');
                            },
                            child:
                            Text("Verify",
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white
                              ),
                            ),


                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Container(
                              child: Text("Resend",
                              style: GoogleFonts.roboto(
                                fontSize: 14,
                                color: AppColors.WHITE_COLOR
                              ),),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
