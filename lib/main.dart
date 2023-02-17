import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'Utils/Routes/Routes.dart';
import 'Utils/Theme/app_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Islame App',
      theme: ThemeData(scaffoldBackgroundColor: AppColors.WHITE_COLOR),
      initialRoute: '/',
      getPages: Routes.routes,
    );
  }
}
