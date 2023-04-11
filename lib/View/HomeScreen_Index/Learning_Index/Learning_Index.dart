import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../Utils/Theme/app_color.dart';
import '../../../Utils/constants/assets_paths.dart';
// ignore: camel_case_types
class Learning_Index extends StatelessWidget {
  const Learning_Index({Key? key}) : super(key: key);

  @override
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

                      backgroundColor: Colors.transparent,
                       title: Column(
                         children: [
                           InkWell(
                             onTap: (){
                               Get.toNamed('/Words');
                               //Navigator.push
                             },
                             child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  Icon(Icons.favorite_border,
                                    color: Colors.white,)

                                ],
                              ),


                      ],
                    ),
                           ),
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
                     trailing: SizedBox(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            );
          },itemCount: 20,


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