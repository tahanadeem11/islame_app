import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Utils/Theme/app_color.dart';
import '../../../Utils/constants/assets_paths.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override

  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  String gender = "male";
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
          title: Text("Profile",
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
              child: SingleChildScrollView(physics: BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20,),
                    Center(
                      child: Image.asset(
                        AppImages.Imgae,
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(height: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20,),
                          child: Text("Full Name",
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: AppColors.WHITE_COLOR
                            ),),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Container(
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
                                color: AppColors.OTP_feildcolor,
                                border: Border.all(color: AppColors.WHITE_COLOR,
                                    width: 0.5
                                )
                            ),
                            child:
                            TextFormField(
                              decoration: InputDecoration(
                                suffixIcon: Icon(Icons.edit,color: AppColors.c2_color,),
                                labelText: "Qamar Chishti",
                                fillColor: AppColors.Field_and_Button_Color,
                                labelStyle: GoogleFonts.roboto(
                                    fontSize: 16,
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
                            ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Flexible(
                                flex: 1,
                                child: Row(
                                  children: [
                                    Radio(
                                      //fillColor: Colors.cyanAccent,
                                      focusColor: Colors.cyanAccent,
                                      hoverColor: Colors.cyanAccent,
                                      activeColor: Colors.cyanAccent,
                                      value: "male",
                                      groupValue: gender,
                                      onChanged: (value) {
                                        setState(() {
                                          gender = value.toString();
                                        });
                                      },
                                    ),
                                    Expanded(
                                        child: Text(
                                          'Male',
                                          maxLines: 2,
                                        ))
                                  ],
                                ),
                              ),
                              Flexible(
                                flex: 2,
                                child: Row(
                                  children: [
                                    Radio(
                                      activeColor: Colors.cyanAccent,
                                      value: "female",
                                      groupValue: gender,
                                      onChanged: (value) {
                                        setState(() {
                                          gender = value.toString();
                                        });
                                      },
                                    ),
                                    Text('Female')
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.only(left: 20,),
                          child: Text("Email Address",
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: AppColors.WHITE_COLOR
                            ),),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Container(
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
                                color: AppColors.OTP_feildcolor,
                                border: Border.all(color: AppColors.WHITE_COLOR,
                                    width: 0.5
                                )
                            ),
                            child:
                            TextFormField(
                              decoration: InputDecoration(
                                suffixIcon: Icon(Icons.edit, color: AppColors.c2_color,),
                                labelText: "qamarchishti@gmail.com",
                                fillColor: AppColors.Field_and_Button_Color,
                                labelStyle: GoogleFonts.roboto(
                                    fontSize: 16,
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
                          ),
                        ),
                        SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.only(left: 20,),
                          child: Text("Contact Number",
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: AppColors.WHITE_COLOR
                            ),),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Container(
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
                                color: AppColors.OTP_feildcolor,
                                border: Border.all(color: AppColors.WHITE_COLOR,
                                    width: 0.5
                                )
                            ),
                            child:
                            TextFormField(
                              decoration: InputDecoration(
                                suffixIcon: Icon(Icons.edit, color: AppColors.c2_color),
                                labelText: "0300-0000000",
                                fillColor: AppColors.Field_and_Button_Color,
                                labelStyle: GoogleFonts.roboto(
                                    fontSize: 16,
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
                          ),
                        ),
                        SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.only(left: 20,),
                          child: Text("Date of Birth",
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: AppColors.WHITE_COLOR
                            ),),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height:   48,
                                width: 85,
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
                                        width: 0.5
                                    )
                                ),
                                child:
                                TextFormField(
                                  decoration: InputDecoration(
                                    labelText: "Date",
                                    fillColor: AppColors.Field_and_Button_Color,
                                    labelStyle: GoogleFonts.roboto(
                                        fontSize: 16,
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
                              ),
                              Container(
                                height:   48,
                                width: 85,
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
                                        width: 0.5
                                    )
                                ),
                                child:
                                TextFormField(
                                  decoration: InputDecoration(
                                    labelText: "Month",
                                    fillColor: AppColors.Field_and_Button_Color,
                                    labelStyle: GoogleFonts.roboto(
                                        fontSize: 16,
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
                              ),
                              Container(
                                height:   48,
                                width: 110,
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
                                        width: 0.5
                                    )
                                ),
                                child:
                                TextFormField(
                                  decoration: InputDecoration(
                                    labelText: "Year",
                                    fillColor: AppColors.Field_and_Button_Color,
                                    labelStyle: GoogleFonts.roboto(
                                        fontSize: 16,
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
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.only(left: 20,),
                          child: Text("Password",
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: AppColors.WHITE_COLOR
                            ),),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Container(
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
                                color: AppColors.OTP_feildcolor,
                                border: Border.all(color: AppColors.WHITE_COLOR,
                                    width: 0.5
                                )
                            ),
                            child:
                            TextFormField(
                              decoration: InputDecoration(
                                suffixIcon: Icon(Icons.edit, color: AppColors.c2_color),
                                labelText: "password1234",
                                fillColor: AppColors.Field_and_Button_Color,
                                labelStyle: GoogleFonts.roboto(
                                    fontSize: 18,
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
                          ),
                        ),
                        SizedBox(height: 25,),
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
                            child:
                            Center(
                              child: Text("Done",
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
                    )

                  ],
                ),
              ),
            ),

          ],
        )
      ),
    );
  }
}
