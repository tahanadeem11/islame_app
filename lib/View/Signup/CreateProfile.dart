import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Utils/Theme/app_color.dart';
import '../../Utils/constants/assets_paths.dart';
import '../../Utils/widget/app_Paddings/app_Paddings.dart';

class CreateProfile extends StatefulWidget {
  CreateProfile({Key? key}) : super(key: key);

  @override
  State<CreateProfile> createState() => _CreateProfileState();
}

class _CreateProfileState extends State<CreateProfile> {
  @override
  String gender = "male";
  TextEditingController nameController = TextEditingController();
  TextEditingController  DOBController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController ConfirmPassController = TextEditingController();

  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(children: [
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                SizedBox(
                  height: 20,
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
                Text(
                  "Profile",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w700,
                    fontSize: 28,
                    color: Colors.white,
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
                      Text(
                        "Full Name",
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        controller: nameController,
                        decoration: InputDecoration(
                          labelText: "Enter your full Name",
                          fillColor: AppColors.Field_and_Button_Color,
                          labelStyle: GoogleFonts.roboto(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: AppColors.WHITE_COLOR.withOpacity(0.5)),
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
                        style: new TextStyle(
                          fontFamily: "Poppins",
                        ),
                      ),

                      SizedBox(
                        height: 8,
                      ),
                      Row(
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
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Date of  Birth",
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 48,
                            width: 85,
                          child:  TextFormField(
                            decoration: InputDecoration(
                              labelText: "Date",
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
                                  width: 1.0,
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
                            style: new TextStyle(
                              fontFamily: "Poppins",
                            ),
                          ),
                          ),
                          Container(
                            height: 48,
                            width: 85,
                            child:  TextFormField(
                              decoration: InputDecoration(
                                labelText: "Monts",
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
                                    width: 1.0,
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
                              style: new TextStyle(
                                fontFamily: "Poppins",
                              ),
                            ),
                          ),
                          Container(
                            height: 48,
                            width: 85,
                            child:  TextFormField(
                              decoration: InputDecoration(
                                labelText: "Date",
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
                                    width: 1.0,
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
                              style: new TextStyle(
                                fontFamily: "Poppins",
                              ),
                            ),
                          )
                        ],
                      ),

                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Password",
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        controller: passwordController,
                        decoration: InputDecoration(
                          labelText: "Enter  your Password ",
                          fillColor: AppColors.Field_and_Button_Color,
                          labelStyle: GoogleFonts.roboto(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: AppColors.WHITE_COLOR.withOpacity(0.5)),
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
                        style: new TextStyle(
                          fontFamily: "Poppins",
                        ),
                      ),




                      //confirm Password
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Confirm Password",
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        controller: ConfirmPassController,
                        decoration: InputDecoration(
                          labelText: "confirm your Password  ",
                          fillColor: AppColors.Field_and_Button_Color,
                          labelStyle: GoogleFonts.roboto(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: AppColors.WHITE_COLOR.withOpacity(0.5)),
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
                        style: new TextStyle(
                          fontFamily: "Poppins",
                        ),
                      ),

                      SizedBox(
                        height: 28,
                      ),


                      Align(
                        alignment: Alignment.center,
                        child: Container(
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
                          child: TextButton(onPressed: () {
                            Get.toNamed('/HomeScreen');
                          }, child:
                          Text("send Code",
                            style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.white
                            ),
                          ),


                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ))
      ]),
    ));
  }
}
