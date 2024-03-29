import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:islame_app_new_design/Utils/Theme/app_color.dart';
import 'package:islame_app_new_design/juzz/lib/screens/home/home_screen.dart';
import 'package:islame_app_new_design/juzz/lib/screens/surah/surah_index_screen.dart';

import '../../juzz/lib/screens/juz/juz_index_screen.dart';
import '../HomeScreen_Index/Learning_Index/Learning_Index.dart';
import '../HomeScreen_Index/Main_Home_Index/HomeScreen_Index.dart';
import '../HomeScreen_Index/Reciting_Index/Reciting_Index.dart';
import 'Drawer.dart';
import 'endDrawer.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex =0;
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            key: _scaffoldKey,
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
              leading: Builder(
                builder: (context){
                  return IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: (){
                      Scaffold.of(context).openDrawer();
                    },
                  );
                },
              ),

              actions: <Widget>[
                Builder(
                  builder: (context){
                    return IconButton(
                      icon: Icon(Icons.settings_outlined),
                      onPressed: (){
                        Scaffold.of(context).openEndDrawer();
                      },
                    );
                  },
                )
              ],
            ),

            drawer: Draweras(),
            endDrawer:endDrawer(),
            body: _currentIndex==0?HomeScreen_Index():_currentIndex==1?Learning_Index():_currentIndex==2?HomeScreensa(maxSlide: MediaQuery.of(context).size.width * 0.835,):Container()
        ));

  }
}