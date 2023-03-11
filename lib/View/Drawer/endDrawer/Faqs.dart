import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Utils/Theme/app_color.dart';
import '../../../Utils/constants/assets_paths.dart';
class Faqs extends StatefulWidget {
  const Faqs({Key? key}) : super(key: key);

  @override
  State<Faqs> createState() => _FaqsState();
}

class _FaqsState extends State<Faqs> {
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
          title: Text("FAQ’s",
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
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: ListView(
                        children: [
                          SizedBox(height: 20,),
                          Text("What is Islame?",
                            style: GoogleFonts.poppins(
                                fontSize: 20,
                                color: AppColors.WHITE_COLOR,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit, sit amet feugiat lectus. Class aptent taciti sociosq.",
                            style: GoogleFonts.poppins(
                                fontSize: 15,
                                color: AppColors.WHITE_COLOR
                            ),
                          ),
                          SizedBox(height: 30,),
                          Text("Type of information we collect",
                            style: GoogleFonts.poppins(
                                fontSize: 20,
                                color: AppColors.WHITE_COLOR,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit, sit amet feugiat lectus. Class aptent taciti sociosq.",
                            style: GoogleFonts.poppins(
                                fontSize: 15,
                                color: AppColors.WHITE_COLOR
                            ),),
                          SizedBox(height: 30,),
                          Text("Terms and Condition",
                            style: GoogleFonts.poppins(
                                fontSize: 20,
                                color: AppColors.WHITE_COLOR,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit, sit amet feugiat lectus. Class aptent taciti sociosq",
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              color: AppColors.WHITE_COLOR,
                            ),
                          ),
                          SizedBox(height: 30,),
                          Text("Mode of Payment",
                            style: GoogleFonts.poppins(
                                fontSize: 20,
                                color: AppColors.WHITE_COLOR,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit, sit amet feugiat lectus. Class aptent taciti sociosq",
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              color: AppColors.WHITE_COLOR,
                            ),
                          ),
                          SizedBox(height: 30,),
                          Text("Refund Policy",
                            style: GoogleFonts.poppins(
                                fontSize: 20,
                                color: AppColors.WHITE_COLOR,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit, sit amet feugiat lectus. Class aptent taciti sociosq",
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              color: AppColors.WHITE_COLOR,
                            ),
                          ),

                        ],
                      ),
                    ),
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
