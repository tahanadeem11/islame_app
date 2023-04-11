import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islame_app_new_design/Utils/Theme/app_color.dart';
import 'package:islame_app_new_design/Utils/widget/app_Paddings/app_Paddings.dart';

import '../../../Utils/constants/assets_paths.dart';
class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<String> litems = ["01","02","03","04",
    "05","06","07","08",
    "09","10","11","12",
    "13","14","15","16"
  ];
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
              child: Column(
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                      height: 400,
                        width: Get.width,
                      decoration:  BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomLeft,
                            colors: <Color>[
                              AppColors.Quiz_container,
                              AppColors.Quiz_container2,
                            ]
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: Padding(
                        padding: AppPaddings.defaultPaddingLR20,
                        child: Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                child: Text("Choose Correct Option",
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.WHITE_COLOR
                                  ),
                                ),
                              ),

                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Color(0xff059E70),
                                borderRadius: BorderRadius.circular(100),),

                               child: IconButton(onPressed: () {  }, icon: Icon(Icons.play_arrow, color: Colors.white,),
                                  
                                ),),
                              SizedBox(
                                height: 10,
                              ),


                              Column(
                                children: [
                                  Container(
                                    height:   48,
                                    width: Get.width,
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
                                   //   Get.toNamed('/QuizScreen');
                                    }, child:
                                    Text("MCQ Option",
                                      style: GoogleFonts.poppins(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white
                                      ),
                                    ),


                                    ),
                                  ),
                                  SizedBox(height: 20,),

                                  Container(
                                    height:   48,
                                    width: Get.width,
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
                                      //Get.toNamed('/QuizScreen');
                                    }, child:
                                    Text("MCQ Option",
                                      style: GoogleFonts.poppins(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white
                                      ),
                                    ),


                                    ),
                                  ),

                                  SizedBox(height: 20,),

                                  Container(
                                    height:   48,
                                    width: Get.width,
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
                                     // Get.toNamed('/QuizScreen');
                                    }, child:
                                    Text("MCQ Option",
                                      style: GoogleFonts.poppins(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white
                                      ),
                                    ),


                                    ),
                                  ),
                                  SizedBox(height: 20,),

                                  Container(
                                    height:   48,
                                    width: Get.width,
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
                                     // Get.toNamed('/QuizScreen');
                                    }, child:
                                    Text("MCQ Option",
                                      style: GoogleFonts.poppins(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white
                                      ),
                                    ),


                                    ),
                                  ),


                                  SizedBox(height: 20,),

                                ],
                              ),
                            ],

                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height:   48,
                        width: 115,
                        decoration:  BoxDecoration(
                          border: Border.all(
                              color: Colors.cyan
                          ),
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
                         // Get.toNamed('/QuizScreen');
                        }, child:
                        Text("Pervious",
                          style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white
                          ),
                        ),


                        ),
                      ),
                      Container(
                        height:   48,
                        width: 105,
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
                        child: TextButton(
                          onPressed: () {
                            Get.toNamed('/QuizScreen');
                          },
                          child:
                        Text("Next",
                          style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white
                          ),
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
            )
          ],
        ),
      ),
    );
  }
}
