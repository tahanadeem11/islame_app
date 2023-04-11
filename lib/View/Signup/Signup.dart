import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:islame_app_new_design/Utils/Fonts/app_fonts.dart';
import 'package:islame_app_new_design/Utils/Theme/app_color.dart';
import 'package:islame_app_new_design/Utils/constants/assets_paths.dart';
import 'package:islame_app_new_design/Utils/widget/AppText/App%20Text.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islame_app_new_design/Utils/widget/app_Paddings/app_Paddings.dart';

import '../services/firebase_auth_methods.dart';
class signup extends StatefulWidget {
   signup({Key? key}) : super(key: key);
   static String verify = "";

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
   @override
   void initState() {
     // TODO: implement initState
     countryPhoneController.text = "+92";
     super.initState();
   }
   int val =0;
   bool loading1 = false;
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

                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      child: Image.asset(
                        AppImages.splashLogo,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),


                    Text("Create Account",
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: AppColors.WHITE_COLOR
                    ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: AppPaddings.defaultPaddingLR20,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Phone/Email",
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          TextFormField(
                            controller: countryPhoneController,
                  decoration: InputDecoration(
                      labelText: "Enter phone no /email",
                      fillColor: AppColors.Field_and_Button_Color,
                      labelStyle: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color:  AppColors.WHITE_COLOR.withOpacity(0.5)
                      ),

                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: const BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 2.0,
                        ),
                      ),
                  ),

                  validator: (val) {
                      if (val?.length == 0) {
                        return "Email cannot be empty";
                      } else {
                        return null;
                      }
                  },
                  keyboardType: TextInputType.emailAddress,
                  style:  TextStyle(
                      fontFamily: "Poppins",
                      color: Colors.white
                  ),
                ),



                          SizedBox(
                            height: 40,
                          ),


                        ],
                      ),
                    ),

                    Container(
                      height:   48,
                      width: 153,
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
                      child:
                      loading1?
                      const CircularProgressIndicator():
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                        ),
                        onPressed: () async {
                          setState(() {
                            loading1 = true;
                          });
                          AuthService().signInWithPhone()!;
                          setState(() {
                            loading1 = false;
                          });
                        //Get.toNamed('/OTP');
                      },
                        child:
                      Text("Send Code",
                        style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white
                        ),
                      ),


                      ),
                    ),

                    SizedBox(
                      height: 20,
                    ),
                    Text("OR",
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: AppPaddings.defaultPaddingLR20,
                          child: InkWell(
                            onTap: (){
                              AuthService().signInWithGoogle();
                            },
                            child: Container(
                              height: 54,
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
                              ),
                              child: Padding(
                                padding: AppPaddings.defaultPaddingLR20,
                                child: Row(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                            height: 35,
                                            width: 35,
                                            child: Image.asset(AppImages.google,
                                            fit: BoxFit.fill,
                                            )),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Container(

                                            child: Text("Continue with Google",
                                            style: GoogleFonts.poppins(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.white
                                            ),
                                            ),

                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: AppPaddings.defaultPaddingLR20,
                          child: InkWell(
                            onTap: (){
                              Get.toNamed('/HomeScreen');
                            },
                            child: Container(
                              height: 54,
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
                              ),
                              child: Padding(
                                padding: AppPaddings.defaultPaddingLR20,
                                child: Row(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                            height: 35,
                                            width: 35,
                                            child: Image.asset(AppImages.facebook,
                                              fit: BoxFit.fill,
                                            )),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Container(

                                          child: Text("Continue with Facebook",
                                            style: GoogleFonts.poppins(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.white
                                            ),
                                          ),

                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Text("Already have an account? ",
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.white
                            ),
                          ),
                    TextButton(
                          onPressed: () {
                            Get.toNamed('/Login');
                          },
                          child: Text("  Sign In",
                              style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff6AFFE2)
                              ),
                            ),
                    ),
                       ],
                     ),


                    SizedBox(
                      height: 20,
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
