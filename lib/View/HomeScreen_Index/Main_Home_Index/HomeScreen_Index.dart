import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Utils/Theme/app_color.dart';
import '../../../Utils/constants/assets_paths.dart';
import '../../../Utils/widget/app_Paddings/app_Paddings.dart';
class HomeScreen_Index extends StatelessWidget {
  const HomeScreen_Index({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                Container(
                  height: 210,
                  width: Get.width,
                  child: Image.asset("assets/images/HomeSS.png",
                  fit: BoxFit.fill,
                  ),
                ),


                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: ListView.builder(


                     itemBuilder: (BuildContext context, int index) {
                       return Column(
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(left: 20, right: 20),
                             child: Container(

                                 width: Get.width,
                                 decoration:  BoxDecoration(
                                   gradient: LinearGradient(
                                       begin: Alignment.topLeft,
                                       end: Alignment.bottomRight,
                                       colors: [

                                         AppColors.Light_Cyan,
                                         AppColors.Lignt_Green,
                                       ]),
                                   borderRadius: BorderRadius.circular(15),
                                   boxShadow: [
                                     BoxShadow(
                                       color: Colors.grey.withOpacity(0.25),
                                       spreadRadius: 0,
                                       blurRadius: 40,
                                       offset: const Offset(0, 4), // changes position of shadow
                                     ),
                                   ],
                                 ),
                                 child: Padding(
                                   padding: AppPaddings.defaultPaddingLR20,
                                   child: Column(
                                     children: [
                                       const SizedBox(
                                         height: 20,
                                       ),
                                       Stack(
                                         children: [
                                           SizedBox(
                                               width: 285,

                                               height: 50,
                                               child: Image.asset("assets/images/Ayat_Bordex.png",
                                                 fit: BoxFit.fill,
                                               )),
                                           SizedBox(
                                             width: 285,
                                             height: 50,
                                             child: Center(child: Text("Ayat of the Moment",
                                               style: GoogleFonts.poppins(
                                                   fontSize: 16,
                                                   color: Colors.white,
                                                   fontWeight: FontWeight.w500
                                               ),
                                             )),
                                           )
                                         ],
                                       ),
                                       Center(child: Text("وَ ہُوَ الَّذِیۡ خَلَقَ الَّیۡلَ وَ النَّہَارَ وَ الشَّمۡسَ وَ الۡقَمَرَ ؕ کُلٌّ فِیۡ فَلَکٍ یَّسۡبَحُوۡنَ ",
                                         textAlign: TextAlign.center,
                                         style: GoogleFonts.poppins(
                                             fontSize: 18,
                                             color: Colors.white,
                                             fontWeight: FontWeight.w600
                                         ),
                                       )),


                                       const SizedBox(
                                         height: 5,
                                       ),
                                       Center(child: Text(" [al-Ambiya -33]َ ",
                                         textAlign: TextAlign.center,
                                         style: GoogleFonts.poppins(
                                             fontSize: 10,
                                             color: Colors.yellow,
                                             fontWeight: FontWeight.w400
                                         ),
                                       )),



                                       const SizedBox(
                                         height: 10,
                                       ),
                                       Center(child: Text(" اور وہی (اللہ) ہے جس نے رات اور دن کو پیدا کیا اور سورج اور چاند کو (بھی)، تمام (آسمانی کرّے) اپنے اپنے مدار کے اندر تیزی سے تیرتے چلے جاتے ہیں",
                                         textAlign: TextAlign.end,
                                         style: GoogleFonts.poppins(
                                             fontSize: 16,
                                             color: Colors.white,
                                             fontWeight: FontWeight.w600
                                         ),
                                       )),


                                       const SizedBox(
                                         height: 10,
                                       ),
                                       Center(child: Text("And (Allah) is He Who created the night and the day, and (also) the sun and the moon. All (heavenly bodies) are continually floating fast in their respective orbits.",
                                         textAlign: TextAlign.start,
                                         style: GoogleFonts.poppins(
                                             fontSize: 14,
                                             color: Colors.white,
                                             fontWeight: FontWeight.w400
                                         ),
                                       )),
                                       const SizedBox(
                                         height: 20,
                                       ),
                                     ],
                                   ),
                                 )
                             ),
                           ),
                           const SizedBox(
                             height: 20,
                           ),
                         ],
                       );
                },itemCount: 10,
                  ),
                )
              ],
            ),
          )
        ]),

    );
  }
}
