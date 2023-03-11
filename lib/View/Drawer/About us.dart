import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islame_app_new_design/Utils/constants/assets_paths.dart';

import '../../Utils/Theme/app_color.dart';

class Aboutus extends StatefulWidget {
  const Aboutus({Key? key}) : super(key: key);

  @override
  State<Aboutus> createState() => _AboutusState();
}

class _AboutusState extends State<Aboutus> {
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
              title: Text("About Us",
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
                   Image.asset(
                     AppImages.WIthColor_logo
                   ),
                   Expanded(
                     child: Padding(
                       padding: const EdgeInsets.only(left: 20,right: 20),
                       child: ListView(
                         children: [
                           SizedBox(height: 20,),
                           Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit, sit amet feugiat lectus. Class aptent taciti sociosq.",
                           style: GoogleFonts.poppins(
                             fontSize: 15,
                             color: AppColors.WHITE_COLOR
                           ),
                           ),
                           SizedBox(height: 10,),
                           Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit, sit amet feugiat lectus. Class aptent taciti sociosq.",
                               style: GoogleFonts.poppins(
                               fontSize: 15,
                               color: AppColors.WHITE_COLOR
                           ),),
                           SizedBox(height: 10,),
                           Text("Why Islame?",
                             style: GoogleFonts.poppins(
                                 fontSize: 30,
                                 color: AppColors.WHITE_COLOR
                             ),
                           ),
                           Column(
                             children: [
                               Row(
                                 children: [
                                  Container(
                                    height: 86,
                                    child: Column(

                                    ),
                                  )
                                 ],
                               )
                             ],
                           )
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
