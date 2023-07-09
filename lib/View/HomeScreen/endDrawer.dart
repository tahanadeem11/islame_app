import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islame_app_new_design/Utils/constants/assets_paths.dart';
import 'package:islame_app_new_design/View/Drawer/Display%20Settings.dart';

import '../../Utils/Theme/app_color.dart';
import '../../Utils/widget/app_Paddings/app_Paddings.dart';
class endDrawer extends StatefulWidget {
  const endDrawer({Key? key}) : super(key: key);

  @override
  State<endDrawer> createState() => _endDrawerState();
}

class _endDrawerState extends State<endDrawer> {
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AppImages.Imgae),
                SizedBox(
                  height: 10,
                ),
                Text("QAMAR",
                  style: GoogleFonts.roboto(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w500
                  ),

                ),
                ]
              ),
              ),
              Padding(
                padding: AppPaddings.defaultPaddingLR20,
                child: Column(
                  children: [
                    InkWell(
                      onTap:(){
                        Get.toNamed('/UserProfile');
                      },
                      child: Container(
                        height: 48,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            Image.asset("assets/images/profile.png"),
                            SizedBox(
                              width: 20 ,
                            ),
                            Text("Profile",
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      height: 1,
                      color: Colors.white,
                    ),


                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => DisplaySetting()));
                      },
                      child: Container(
                        height: 48,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            Image.asset("assets/images/display.png"),
                            SizedBox(
                              width: 20 ,
                            ),

                            Text("Display Setting",
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500
                              ),
                            )
                          ],
                        ),
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
                          Image.asset("assets/images/signout.png"),
                          SizedBox(
                            width: 20 ,
                          ),

                          Text("Sign Out",
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
