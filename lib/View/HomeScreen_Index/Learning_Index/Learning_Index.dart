import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../Utils/Theme/app_color.dart';
import '../../../Utils/constants/assets_paths.dart';
import 'Lesson_Directory/LessonNo_3.dart';
import 'Lesson_Directory/LessonNo_4.dart';
// ignore: camel_case_types
class Learning_Index extends StatelessWidget {
   Learning_Index({Key? key}) : super(key: key);

  @override
  List<String> Urdu_Alphabets = [
    "مفرد حروف بالترتیب",
    "مفرد حروف بلاترتیب",
    "حروف کی بدلتی\n ھوئی شکلیں",
    "حروف مرکبات",
    " حرکات",
    " تنوین ",
    " جزم یا سکونْ",
    "تشدید ّ کا بیان",
    "حروفِ مدّه ا-و-ی",
    "حروفِ لِین و ـ ی",
    "کھڑازبر ٰ کھڑی\n زیر ٖ الٹا پیش ٗ",
    "نون سا کن عتنوین اور\n میم ساکن کے قواعد",
    "ادغام ",
    "اقلاب",
    "اِخفاء",
    " نونِ قُطنی",
    "لام کا بیان",
    "مدّات",
    "لکھنے اور پڑھنے کی \n صورت میں تبدیل \nھونے والے الفاظ	",
    "وقف کا بیان",

  ];
   List<String> English_Alphabets = [
     "Orderd Alphabets",
     "Random order",
     "Altered forms \nof letters",
     "Letter combinations",
     "Movements",
     "Tanween ً ٍ ُ",
     "Peace or tranquility",
     "A statement of \nintensification",
     "Letters of \nduration A-V-Y",
     "Letters of line and y",
     "Upside down",
     "The rules of non sa\n kin atanwin and mem sakan",
     "Integration",
     "Iqlab",
     "The secret",
     "Non circumcision",
     "Lam's statement",
     "Periods",
     "Words that change\n in writing and reading",
     "Dedication statement",

   ];



   List<String> NO_of_Lesson = [
     "01",
     "02",
     "03",
     "04",
     "05",
     "06",
     "07",
     "08",
     "09",
     "10",
     "11",
     "12",
     "13",
     "14",
     "15",
     "16",
     "17",
     "18",
     "19",

   ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
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
        child:ListView.builder(
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
                          offset: Offset(0, 4), // changes position of shadow
                        ),
                      ],
                    ),
                    child: ExpansionTile(
                      trailing: Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                      ),
                      backgroundColor: Colors.transparent,
                      title: Column(
                        children: [
                          InkWell(
                            onTap: (){

                              index==0?
                              Get.toNamed('/Words'):
                              index==1?
                              Get.toNamed('/LessonNo_2'):
                              index==2?
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => LessonNo_3())):
                              index==3?
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => LessonNo_4())) :Container();
                              print(index);
                              //Navigator.push
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 32,
                                        width: 32,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(100),
                                          color: Color(0xff00C289),

                                        ),
                                        child: Center(
                                          child: Text(NO_of_Lesson[index],
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),

                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(English_Alphabets[index],
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16
                                            ),
                                          ),
                                          // Text("Lesson No 01",
                                          //   style: TextStyle(
                                          //       color: Colors.white,
                                          //       fontSize: 8
                                          //   ),
                                          // ),
                                        ],
                                      ),
                                    ],
                                  ),

                                  Row(

                                    children: [
                                      Text(Urdu_Alphabets[index],
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          //column bridge

                          Padding(
                            padding: const EdgeInsets.only(left: 32),
                            child: Icon(Icons.keyboard_arrow_down_outlined,
                              color: Colors.white,
                            ),
                          ),

                        ],
                      ),

                      children: <Widget>[
                        Column(
                          children: [

                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20, right: 20),
                              child: Container(
                                height: 42,
                                width: MediaQuery.of(context).size.width/1.5,

                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),

                          ],
                        )
                      ],

                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            );
          },itemCount: Urdu_Alphabets.length,


        )
      ),
        ],
      ),
    );
  }
}
/*
Padding(
              padding:  AppPaddings.defaultPaddingLR20,
              child: Column(
                children: [
                  InkWell(
                    onTap: (){
                      Get.toNamed('/Words');
                      //Navigator.push
                    },
                    child: Container(
                        height: 70,
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
                              offset: Offset(0, 4), // changes position of shadow
                            ),
                          ],
                        ),
                        child:  Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 32,
                                  width: 32,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Color(0xff00C289),

                                  ),
                                  child: Center(
                                    child: Text("01",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Lesson Name",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16
                                      ),
                                    ),
                                    Text("Lesson No 01",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 8
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text("سبق کا نام",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(Icons.favorite_border)
                              ],
                            ),

                          ],
                        )
                    ),
                  ),

                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            );
 */