import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islame_app_new_design/Utils/widget/app_Paddings/app_Paddings.dart';

import '../../Utils/Theme/app_color.dart';
class Draweras extends StatelessWidget {
  const Draweras({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration:  BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topLeft,
                  colors: <Color>[
                    AppColors.Light_Cyan2,
                    AppColors.Lignt_Green2,]),
            ),
          ),
          Column(
            children: [
              Container(
                height: 163,
                width: MediaQuery.of(context).size.width,
                color: Color(0xff222222).withOpacity(0.7),
                child: Image.asset("assets/images/Drawer Logo.png"),
              ),
              Padding(
                padding: AppPaddings.defaultPaddingLR20,
                child: Column(
                  children: [
                    Container(
                      height: 48,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          Image.asset("assets/images/Home.png"),
                          SizedBox(
                            width: 20 ,
                          ),
                          Text("Home",
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w500
                            ),
                          )
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      height: 1,
                      color: Colors.white,
                    ),


                    Container(
                      height: 48,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          Image.asset("assets/images/Quiz Result.png"),
                          SizedBox(
                            width: 20 ,
                          ),

                          Text("Quiz Result",
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w500
                            ),
                          )
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      height: 1,
                      color: Colors.white,
                    ),


                    Container(
                      height: 48,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          Image.asset("assets/images/Unblock Features.png"),
                          SizedBox(
                            width: 20 ,
                          ),

                          Text("Unblock Features",
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w500
                            ),
                          )
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      height: 1,
                      color: Colors.white,
                    ),



                    Container(
                      height: 48,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          Image.asset("assets/images/Invite A Friend.png"),
                          SizedBox(
                            width: 20 ,
                          ),

                          Text("Invite A Friend",
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w500
                            ),
                          )
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      height: 1,
                      color: Colors.white,
                    ),




                    Container(
                      height: 48,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          Image.asset("assets/images/FAQ’s.png"),
                          SizedBox(
                            width: 20 ,
                          ),

                          Text("FAQ’s",
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w500
                            ),
                          )
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      height: 1,
                      color: Colors.white,
                    ),





                    Container(
                      height: 48,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          Image.asset("assets/images/Feedback.png"),
                          SizedBox(
                            width: 20 ,
                          ),

                          Text("Feedback",
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w500
                            ),
                          )
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      height: 1,
                      color: Colors.white,
                    ),



                    Container(
                      height: 48,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          Image.asset("assets/images/Privacy Policy.png"),
                          SizedBox(
                            width: 20 ,
                          ),

                          Text("Privacy Policy",
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w500
                            ),
                          )
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      height: 1,
                      color: Colors.white,
                    ),


                  ],
                ),
              )
            ],
          ),

        ],
      ),
    );
  }
}
