import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islame_app_new_design/Utils/constants/assets_paths.dart';

import '../../Utils/Theme/app_color.dart';
import 'About us.dart';
class DisplaySetting extends StatefulWidget {
  const DisplaySetting({Key? key}) : super(key: key);

  @override
  State<DisplaySetting> createState() => _DisplaySettingState();
}

class _DisplaySettingState extends State<DisplaySetting> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration:  BoxDecoration(
              gradient: LinearGradient(
                  end: Alignment.bottomLeft,
                  begin: Alignment.topLeft,
                  colors: <Color>[
                    AppColors.App_bar,
                    AppColors.App_bar2,]),
            ),
          ),
          elevation: 0,
          title: Text("Display Settings",
            style: GoogleFonts.roboto(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: AppColors.WHITE_COLOR
            ),
          ),

        ),

        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient:  LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xff006D74),
                      Color(0xff02904C),

                      // AppColors.Light_Cyan,
                      // AppColors.Lignt_Green,
                    ]),
              ),
            ),
            Container(
              height: double.infinity,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      child: Text("Appearance",
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          color: AppColors.WHITE_COLOR,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                            child: Text("Light Mode",
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: AppColors.WHITE_COLOR,
                              ),
                            )
                        ),
                        SizedBox(width: 20,),
                        Container(
                          child: Icon(Icons.add_box,
                          color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 30,),
                    Container(
                      child: Text("Brightness",
                        style: GoogleFonts.roboto(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: AppColors.WHITE_COLOR
                        ),),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Container(
                            child: Icon(Icons.brightness_5_rounded,
                                color: Colors.white
                            )
                        ),
                        SizedBox(width: 10,),
                        Container(
                          height: 3,
                          width: 230,
                          color: AppColors.WHITE_COLOR,
                        ),
                        SizedBox(width: 10,),
                        Container(
                          child: Icon(Icons.brightness_6_rounded,
                              color: Colors.white
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 30,),
                    Container(
                      child: Text("Text Font",
                        style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: AppColors.WHITE_COLOR
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      child: Text("Poppins Regular",
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: AppColors.WHITE_COLOR
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                    Container(
                      child: Text("Font Size",
                        style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: AppColors.WHITE_COLOR
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Text("20",
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: AppColors.WHITE_COLOR
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                    Container(
                      child: Text("Font Color",
                        style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: AppColors.WHITE_COLOR
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Container(
                        height: 23,
                        width: 24,
                        color: AppColors.WHITE_COLOR,
                      ),
                    ),
                    SizedBox(height: 50,),
                    Center(
                      child: Container(
                        height:   48,
                        width: 168 ,
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
                        child: TextButton(onPressed: () { Navigator.pop(context);
                        }, child:
                        Text("Save",
                          style: GoogleFonts.roboto(
                              fontSize: 20,
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
            ),

          ],
        ),
      ),
    );
  }
}

