import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../Utils/Theme/app_color.dart';
import '../../../Utils/constants/assets_paths.dart';
import '../../../Utils/widget/app_Paddings/app_Paddings.dart';

class Words extends StatelessWidget {
  Words({Key? key}) : super(key: key);
  List<String> litems = [
    "Alif",
    "Baa",
    "Taa",
    "Saa",
    "Jeem",
    "Haa",
    "Khaa",
    "Dall",
    "Zall",
    "Raaw",
    "Zaa",
    "Seen",
    "Sheen",
    "Sawad",
    "Dwaad",
    "Twaa",
    "Zwaan",
    "Ayeen",
    "Gaeen",
    "Faaa",
    "Qaff",
    "kaff",
    "laam",
    "meem",
    "Noon",
    "wawoo",
    "Haaw",
    "Hamza",
    "Yaaaa",
  ];
  List<String> urdu = [
    "ا",
    "ب",
    "ت",
    "ﺙ",
    "ج",
    "ح",
    "ﺥ",
    "د",
    "ﺫ",
    "ر",
    "ﺯ",
    "س",
    "ش",
    "ص",
    "ﺽ",
    "ط",
    "ﻅ",
    "ع",
    "غ",
    "ف",
    "ق",
    "ﻙ",
    "ل",
    "م",
    "ن",
    "و",
    "ہ",
    "ء",
    "ی",
  ];
  List<String> Details = [
    "الف",
    "با",
    "تا",
    "ثآ",
    "جیم",
    "حا",
    "خا",
    "دال",
    "ذال",
    "را",
    "زا",
    "سین",
    "شین",
    "صاد",
    "ضاد",
    "طا",
    "ظا",
    "عین",
    "غین",
    "فا",
    "قاف",
    "کاف",
    "لام",
    "میم",
    "نون",
    "واو",
    "ھا",
    "ھمزہ",
    "یا",
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
