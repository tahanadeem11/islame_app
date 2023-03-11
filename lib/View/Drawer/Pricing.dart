import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islame_app_new_design/Utils/Theme/app_color.dart';

import '../../Utils/constants/assets_paths.dart';

class Pricing extends StatefulWidget {
  const Pricing({Key? key}) : super(key: key);

  @override
  State<Pricing> createState() => _PricingState();
}

class _PricingState extends State<Pricing> {
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: Container(
                       child: Text("unlocked Premium",
                       style: GoogleFonts.roboto(
                         fontSize: 20,
                         fontWeight: FontWeight.w500,
                         color: AppColors.WHITE_COLOR
                       ),
                       ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 165,
                            width: 116,
                          ),
                          Positioned(
                            top: 15,
                            child: Container(
                                width: 116,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: AppColors.OTP_feildcolor,
                                border: Border.all(color: AppColors.c2_color,width: 1.5)

                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    height: 25,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                       Text("01",
                                        style: GoogleFonts.roboto(
                                            fontSize: 36,
                                            fontWeight: FontWeight.w600,
                                            color: AppColors.WHITE_COLOR
                                        ),
                                      ),
                                      Text("Month",
                                        style: GoogleFonts.roboto(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: AppColors.WHITE_COLOR
                                        ),
                                      ),
                                      SizedBox(
                                        height: 25,
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: 36,
                                    width: 116,
                                    color: AppColors.c2_color,
                                    child: Center(
                                      child: Text("RS. 1950.00",
                                        style: GoogleFonts.roboto(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: AppColors.WHITE_COLOR
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            height: 165,
                            width: 116,
                          ),
                          Positioned(
                            top: 15,
                            child: Container(
                              width: 116,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: AppColors.OTP_feildcolor,
                                border: Border.all(color: AppColors.circle_border,width: 1.5)
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    height: 25,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("12",
                                        style: GoogleFonts.roboto(
                                            fontSize: 36,
                                            fontWeight: FontWeight.w600,
                                            color: AppColors.WHITE_COLOR
                                        ),
                                      ),
                                      Text("Month",
                                        style: GoogleFonts.roboto(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: AppColors.WHITE_COLOR
                                        ),
                                      ),
                                      SizedBox(
                                        height: 25,
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: 36,
                                    width: 116,
                                    color: AppColors.c2_color,
                                    child: Center(
                                      child: Text("RS. 1950.00",
                                        style: GoogleFonts.roboto(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                            color: AppColors.WHITE_COLOR
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 40,
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: AppColors.circle,
                                border: Border.all(color: AppColors.circle_border),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Text("Save",
                                    style: GoogleFonts.roboto(
                                      fontSize: 10,
                                      color: AppColors.circle_border
                                    ),),
                                  ),
                                  Text("50%",
                                      style: GoogleFonts.roboto(
                                          fontSize: 10,
                                          color: AppColors.circle_border
                                      ))
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            height: 165,
                            width: 116,
                          ),
                          Positioned(
                            top: 15,
                            child: Container(
                              width: 116,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: AppColors.OTP_feildcolor,
                                border: Border.all(color: AppColors.c2_color,width: 1.5)
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    height: 25,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("06",
                                        style: GoogleFonts.roboto(
                                            fontSize: 36,
                                            fontWeight: FontWeight.w600,
                                            color: AppColors.WHITE_COLOR
                                        ),
                                      ),
                                      Text("Month",
                                        style: GoogleFonts.roboto(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: AppColors.WHITE_COLOR
                                        ),
                                      ),
                                      SizedBox(
                                        height: 25,
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: 36,
                                    width: 116,
                                    color: AppColors.c2_color,
                                    child: Center(
                                      child: Text("RS. 1950.00",
                                        style: GoogleFonts.roboto(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                            color: AppColors.WHITE_COLOR
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          child: Row(
                            children: [
                              Container(
                                height: 16,
                                  width: 16,
                                  child: Center(
                                      child: Icon(Icons.check_circle,
                                          color: Colors.green))),
                              SizedBox(
                                width: 20,
                              ),
                              Text("Unlock All lessons and Activies",
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  color: AppColors.WHITE_COLOR
                                ),
                                  )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          child: Row(
                            children: [
                              Container(
                                  height: 16,
                                  width: 16,
                                  child: Center(
                                      child: Icon(Icons.check_circle,
                                          color: Colors.green))),
                              SizedBox(
                                width: 20,
                              ),
                              Text("Unlock All lessons and Activies",
                                style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    color: AppColors.WHITE_COLOR
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          child: Row(
                            children: [
                              Container(
                                  height: 16,
                                  width: 16,
                                  child: Center(
                                      child: Icon(Icons.check_circle,
                                          color: Colors.green))),
                              SizedBox(
                                width: 20,
                              ),
                              Text("Unlock All lessons and Activies",
                                style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    color: AppColors.WHITE_COLOR
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          child: Row(
                            children: [
                              Container(
                                  height: 16,
                                  width: 16,
                                  child: Center(
                                      child: Icon(Icons.check_circle,
                                          color: Colors.green))),
                              SizedBox(
                                width: 20,
                              ),
                              Text("Unlock All lessons and Activies",
                                style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    color: AppColors.WHITE_COLOR
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 50,),
                      Container(
                        height:   48,
                        width: 216,
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
                            //color: AppColors.OTP_feildcolor,
                            border: Border.all(color: AppColors.Light_Cyan,
                                width: 2
                            ),
                          gradient:  LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                AppColors.Light_Cyan,
                                AppColors.Lignt_Green,
                              ]),
                        ),
                        child: TextButton(onPressed: () { Navigator.of(context).push(MaterialPageRoute(builder: (context) => Pricing()));
                        }, child:
                        Text("Subscribe",
                          style: GoogleFonts.roboto(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.white
                          ),
                        ),
                        ),
                      ),
                    ],
                  )
                ],
              ),

            ),
          ],
        ),
      ),
    );
  }
}
