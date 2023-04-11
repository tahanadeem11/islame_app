import 'package:flutter/material.dart';

import 'package:get/get.dart';

class OtpController extends GetxController {
  bool isShow = false;
    TextEditingController controller = TextEditingController();

  void showMethod() {
    isShow = true;
    update();
  }

  checkLocationPermission(
      BuildContext
      context) async {} //status = await Geolocator.requestPermission();

}