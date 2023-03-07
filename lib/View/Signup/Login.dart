import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islame_app_new_design/Utils/Theme/app_color.dart';

import '../../Utils/constants/assets_paths.dart';
import '../../Utils/widget/app_Paddings/app_Paddings.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                       height: 30,
                     ),
                     Container(
                       child: Text("Login",
                         style: GoogleFonts.poppins(
                           fontSize:28,
                           fontWeight: FontWeight.bold,
                           color: AppColors.WHITE_COLOR
                         ),
                       ),
                     ),
                     SizedBox(
                       height: 20,
                     ),
                     Padding(
                       padding: const EdgeInsets.only(left: 20, right: 20),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Container(
                             child: Text("Phone no/email",
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
                                 hintText: "Enter phone no/email",
                                 hintStyle: GoogleFonts.lato(
                                     fontSize: 17,
                                     fontWeight: FontWeight.normal,
                                     color: AppColors.WHITE_COLOR.withOpacity(0.5)
                                 ),
                               ),
                             ),
                           ),
                           SizedBox(
                             height: 18,
                           ),
                           Container(
                             child: Text("Password",
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
                               color: AppColors.OTP_feildcolor,
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
                                   color: AppColors.OTP_feildcolor.withOpacity(0.5),
                                 ),
                                 hintText: "Enter phone Password",
                                 hintStyle: GoogleFonts.lato(
                                     fontSize: 17,
                                     fontWeight: FontWeight.normal,
                                     color: AppColors.WHITE_COLOR.withOpacity(0.5)
                                 ),
                               ),
                             ),
                           ),
                           Align(
                             alignment: Alignment.topRight,
                             child: TextButton(
                               onPressed: () {
                                 Get.toNamed('/ForgetPassword');
                               },
                               child: Text("Forget Password?",
                               style: GoogleFonts.poppins(
                                 fontSize: 17,
                                 fontWeight: FontWeight.w500,
                                 color: AppColors.WHITE_COLOR
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
                                   color: AppColors.OTP_feildcolor,
                                   border: Border.all(color: AppColors.WHITE_COLOR,
                                       width: 1
                                   )
                               ),
                               child: TextButton(onPressed: () { Navigator.of(context).push(MaterialPageRoute(builder: (context) => Login()));
                               }, child:
                               Text("Login",
                                 style: GoogleFonts.poppins(
                                     fontSize: 16,
                                     fontWeight: FontWeight.w600,
                                     color: Colors.white
                                 ),
                               ),
                               ),
                             ),
                           ),
                           SizedBox(
                             height: 20,
                           ),
                           Column(
                             children: [
                               Padding(
                                 padding: AppPaddings.defaultPaddingLR20,
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
                                     color: AppColors.OTP_feildcolor,
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
                               SizedBox(
                                 height: 20,
                               ),
                               Padding(
                                 padding: AppPaddings.defaultPaddingLR20,
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
                                     color: AppColors.OTP_feildcolor,
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
                               SizedBox(
                                 height: 15,
                               ),
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: [
                                   Text("Dont have an account? ",
                                   style: GoogleFonts.poppins(
                                     fontSize: 14,
                                     fontWeight: FontWeight.w500,
                                     color: AppColors.WHITE_COLOR
                                   ),),

                                   TextButton(
                                     onPressed: () {
                                       Navigator.pop(context);
                                     },
                                     child: Text(" Sign up",
                                     style: GoogleFonts.poppins(
                                       fontSize: 14,
                                       fontWeight: FontWeight.w500,
                                         color: Color(0xff6AFFE2)
                                     ),),
                                   ),
                                 ],
                               )
                             ],
                           ),
                         ],
                       ),
                     )
           ],
         ),
               ),
        ),
    ]
         )
    )
    );
  }
}
