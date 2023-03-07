import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:islame_app_new_design/Utils/Theme/app_color.dart';

import '../HomeScreen_Index/Learning_Index/Learning_Index.dart';
import '../HomeScreen_Index/Main_Home_Index/HomeScreen_Index.dart';
import '../HomeScreen_Index/Reciting_Index/Reciting_Index.dart';
import 'Drawer.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex =0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          bottomNavigationBar: ConvexAppBar(
            style: TabStyle.custom,
              backgroundColor:Color(0xff04AD89),
              activeColor: Color(0xffFFCA21),
              items: [
              TabItem(icon: Icons.home),
                TabItem(icon: Image.asset("assets/images/Learning Icon.png",)),
           TabItem(icon: Image.asset("assets/images/Reciting.png",
                //color: Color(0xffFFCA21),
              )),
            ],
            initialActiveIndex: _currentIndex,
              onTap:(index) {
                setState(() {

                  print(_currentIndex= index);

                });

              }
          ),
          appBar: AppBar(
            flexibleSpace: Container(
              decoration:  BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topLeft,
                    colors: <Color>[
                      AppColors.Light_Cyan,
                      AppColors.Lignt_Green,]),
              ),
            ),
            elevation: 0,
            centerTitle: true,
            title: Container(
              height: 50,
                width: 50,
                child: Image.asset("assets/images/splashLogo.png")),

            actions: <Widget>[
              IconButton(
                icon: const Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                onPressed: () {
                  // do something
                },
              )
            ],
          ),
          drawer: Draweras(),
          body: _currentIndex==0?HomeScreen_Index():_currentIndex==1?Learning_Index():_currentIndex==2?Reciting_Index():Container()
        ));

  }
}
