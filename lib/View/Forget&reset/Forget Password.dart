import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islame_app_new_design/Utils/Theme/app_color.dart';

import '../../Utils/constants/assets_paths.dart';
import 'Reset Password.dart';
class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
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
            SizedBox(
              height: 50,
            ),
            Container(
              height: double.infinity,
              width: double.infinity,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      child: Image.asset("assets/images/splashLogo.png",
                      fit: BoxFit.fill,),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      child: Text("Forget Password",
                      style: GoogleFonts.roboto(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: AppColors.WHITE_COLOR
                      ),),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 40,right: 40),
                        child: Text(
                          "Enter your registered email to recieve reset password code",textAlign: TextAlign.center,
                        style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.WHITE_COLOR,
                        ),),
                      ),
                    ),
                     SizedBox(
                       height: 30,
                     ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text("phone no/email",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: AppColors.WHITE_COLOR
                            ),),
                          ),
                          SizedBox(height: 5,),
                          Container(
                            height: 48,
                            width: Get.width,
                            decoration: BoxDecoration(
                              color: AppColors.Field_and_Button_Color,
                                border: Border.all(color: AppColors.WHITE_COLOR,
                                    width: 1),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Enter phone no/email",
                                hintStyle: GoogleFonts.lato(
                                    fontSize: 17,
                                    fontWeight: FontWeight.normal,
                                    color: AppColors.WHITE_COLOR
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Center(
                            child: Container(
                              height:   48,
                              width: 164,
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
                              child: TextButton(onPressed: () {
                                Get.toNamed('/Resetpassword');
                                //Navigator.of(context).push(MaterialPageRoute(builder: (context) => Resetpassword()));
                              }, child:
                              Text("Send Code",
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white
                                ),
                              ),
                              ),
                            ),
                          ),
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
