import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Utils/Theme/app_color.dart';
import '../../Utils/constants/assets_paths.dart';
class Resetpassword extends StatefulWidget {
  const Resetpassword({Key? key}) : super(key: key);

  @override
  State<Resetpassword> createState() => _ResetpasswordState();
}

class _ResetpasswordState extends State<Resetpassword> {
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
                      child: Text("Reset Password",
                        style: GoogleFonts.poppins(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: AppColors.WHITE_COLOR
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text("New Password",
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
                              // border: Border.all(color: AppColors.WHITE_COLOR,
                              //     width: 1),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  borderSide: const BorderSide(
                                    // color: Colors.white,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                    // width: 2.0,
                                  ),
                                ),
                                suffixIcon: Icon(
                                  Icons.remove_red_eye,
                                  color: AppColors.Field_and_Button_Color,
                                ),
                                hintText: "    Password",
                                hintStyle: GoogleFonts.lato(
                                    fontSize: 17,
                                    fontWeight: FontWeight.normal,
                                    color: AppColors.WHITE_COLOR.withOpacity(0.5)
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            child: Text("Confirm Password",
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
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  borderSide: const BorderSide(
                                    // color: Colors.white,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                    // width: 2.0,
                                  ),
                                ),
                                suffixIcon: Icon(
                                  Icons.remove_red_eye,
                                  color: AppColors.Field_and_Button_Color,
                                ),
                                hintText: "    Password",
                                hintStyle: GoogleFonts.lato(
                                    fontSize: 17,
                                    fontWeight: FontWeight.normal,
                                    color: AppColors.WHITE_COLOR.withOpacity(0.5)
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
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
                              child: TextButton(onPressed: () { Navigator.of(context).push(MaterialPageRoute(builder: (context) => Resetpassword()));
                              }, child:
                              Text("Confirm",
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
                    )

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
