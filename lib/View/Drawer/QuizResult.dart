import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islame_app_new_design/Utils/Theme/app_color.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../Utils/constants/assets_paths.dart';

class QuizResult extends StatefulWidget {
  const QuizResult({Key? key}) : super(key: key);

  @override
  State<QuizResult> createState() => _QuizResultState();
}

class _QuizResultState extends State<QuizResult> {
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
        ),
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                AppImages.backGropund,
                fit: BoxFit.fill,),
            ),
            Container(
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(height: 20,),
                      Container(
                        height:   48,
                        width: 168 ,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.25),
                                spreadRadius: 0,
                                blurRadius: 4,
                                offset: Offset(0,4), // changes position of shadow
                              ),
                            ],
                            //color: AppColors.OTP_feildcolor,
                            border: Border.all(color: AppColors.WHITE_COLOR,
                                width: 2
                            ),
                            color: AppColors.quiz_containercolor

                        ),
                        child:
                        Center(
                          child: Text("Lesson Name",
                            style: GoogleFonts.roboto(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.white
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Column(
                        children: [
                          Container(

                            width: 372,
                            decoration: BoxDecoration(
                                gradient:  LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Color(0xff09B181),
                                      Color(0xFF077D75),
                                      // AppColors.Light_Cyan,
                                      // AppColors.Lignt_Green,
                                    ]
                                ),
                                borderRadius: BorderRadius.circular(10)
                            ),

                            child: Column(
                              children: [
                                SizedBox(height: 10,),
                                Container(
                                  height:   54,
                                  width: 332 ,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.25),
                                          spreadRadius: 0,
                                          blurRadius: 4,
                                          offset: Offset(0,4), // changes position of shadow
                                        ),
                                      ],
                                      //color: AppColors.OTP_feildcolor,
                                      color: AppColors.OTP_feildcolor

                                  ),
                                  child:
                                  Center(
                                    child: Text("Lesson Name",
                                      style: GoogleFonts.roboto(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white
                                      ),
                                    ),
                                  ),
                                ),


                                SizedBox(height: 20,),
                                Container(
                                  height:   54,
                                  width: 332 ,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),

                                    border:  Border.all(width: 2,color: Color(0xff00D8BC)),
                                    //color: AppColors.OTP_feildcolor,
                                    //  color: AppColors.OTP_feildcolor

                                  ),
                                  child:
                                  Center(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Text("Total Questions ",
                                          style: GoogleFonts.roboto(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white
                                          ),
                                        ), Text("10",
                                          style: GoogleFonts.roboto(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10 ,
                                        )
                                      ],
                                    ),
                                  ),
                                ),



                                SizedBox(height: 10,),
                                Container(
                                  height:   54,
                                  width: 332 ,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),

                                    border:  Border.all(width: 2,color: Color(0xff00D8BC)),
                                    //color: AppColors.OTP_feildcolor,
                                    //  color: AppColors.OTP_feildcolor

                                  ),
                                  child:
                                  Center(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Text("Total Questions ",
                                          style: GoogleFonts.roboto(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white
                                          ),
                                        ), Text("10",
                                          style: GoogleFonts.roboto(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10 ,
                                        )
                                      ],
                                    ),
                                  ),
                                ),




                                SizedBox(height: 10,),
                                Container(
                                  height:   54,
                                  width: 332 ,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),

                                    border:  Border.all(width: 2,color: Color(0xff00D8BC)),
                                    //color: AppColors.OTP_feildcolor,
                                    //  color: AppColors.OTP_feildcolor

                                  ),
                                  child:
                                  Center(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Text("Total Questions ",
                                          style: GoogleFonts.roboto(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white
                                          ),
                                        ), Text("10",
                                          style: GoogleFonts.roboto(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10 ,
                                        )
                                      ],
                                    ),
                                  ),
                                ),

                                SizedBox(
                                  height: 20,
                                ),

                              ],
                            ),
                          ),

                          SizedBox(height: 40,),
                          CircularPercentIndicator(
                            radius: 80.0,

                            progressColor:Color(0xff04F5AC),
                            lineWidth: 20.0,
                            animationDuration: 1200,
                            animation: true,
                            percent: 0.7,
                            center:  Text(
                              "70.0%",
                              style:
                              TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                            ),),


                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height:   48,
                            width: 153,
                            decoration:  BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [

                                    AppColors.Light_Cyan,
                                    AppColors.Lignt_Green,
                                  ]),
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.25),
                                  spreadRadius: 0,
                                  blurRadius: 40,
                                  offset: Offset(0, 4), // changes position of shadow
                                ),
                              ],
                            ),
                            child: TextButton(onPressed: () {
                            //  Get.toNamed('/QuizScreen');
                            }, child:
                            Text("Done",
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

                        ],
                      ),


                    ],
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}

