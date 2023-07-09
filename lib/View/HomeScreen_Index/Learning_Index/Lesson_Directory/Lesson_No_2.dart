import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../Utils/Theme/app_color.dart';
import '../../../../Utils/constants/assets_paths.dart';
import '../../../../Utils/widget/app_Paddings/app_Paddings.dart';


class LessonNo_2 extends StatelessWidget {
  LessonNo_2({Key? key}) : super(key: key);
  List<String> litems = [
    "Hamza",
    "Haaw",
    "Ayeen",
    "Haww",
    "Gaiwn",
    "Khaa",
    "Qaff",
    "Kaff",
    "Geem",
    "Sheen",
    "Zaa",
    "Yaaa",
    "Dawaad",
    "laam",
    "Noon",
    "Raw",
    "Twaaa",
    "Daal",
    "Taaa",
    "Zwaa",
    "Zaal",
    "Saww",
    "Sawad",
    "Zaal",
    "Noon",
    "Wawoo",
    "Haww",
    "Seen",
    "Faww",
    "Baa",
    "Meem",
    "Waw",
    "Alif",
    "Yaa",
    "Baa",

  ];
  List<String> urdu = [
    "ء",
    "ه",
    "ع",
    "ح",
    "غ",
    "خ",
    "ق",
    "ك",
    "ج",
    "ش",
    "ﺯ",
    "ي",
    "ض",
    "ل",
    "ن",
    "ر",
    "ط",
    "د",
    "ت",
    "ظ",
    "ذ",
    "ث",
    "ص",
    "ز",
    "ن",
    "و",
    "ہ",
    "س",
    "ف",
    "ب",
    "م",
    "و",
    "ا",
    "ي",
    "ب",
  ];
  List<String> Details = [
    "ھمزه",
    "ھا",
    "عین",
    "حا",
    "غین",
    "خا",
    "قاف",
    "کاف",
    "جیم",
    "شین",
    "زا",
    "یا",
    "ضاد",
    "لام",
    "ن",
    "را",
    "ظا",
    "ذال",
    "تا",
    "ظا",
    "ذال",
    "ثآ",
    "صاد",
    "زا",
    "نون",
    "واو",
    "ھا",
    "سین",
    "فا",
    "با",
    "میم",
    "واو",
    "الف",
    "یا",
    "با",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topLeft,
                colors: <Color>[
                  AppColors.Light_Cyan,
                  AppColors.Lignt_Green,
                ]),
          ),
        ),
        elevation: 0,
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
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
              child: ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: AppPaddings.defaultPaddingLR20,
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Get.toNamed('/Guidence');
                            //Navigator.push
                          },
                          child: Container(
                              height: 70,
                              width: Get.width,
                              decoration: BoxDecoration(
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
                                    offset: Offset(
                                        0, 4), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    litems[index],
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 24),
                                  ),
                                  Text(
                                    urdu[index],
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 50,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    Details[index],
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 30),
                                  ),
                                ],
                              )),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  );
                },
                itemCount: urdu.length,
              )),
        ],
      ),
    );
  }
}
