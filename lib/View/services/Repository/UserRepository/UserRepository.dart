import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:islame_app_new_design/View/services/Model/user_Model.dart';

class UserRepository extends GetxController{
  static UserRepository get instance =>Get.find();


  final _db = FirebaseFirestore.instance;

  createUser(UserModel user) async {
   await _db.collection("User").add(user.toJson()).whenComplete(() => Get.snackbar("Success", "Your Account Has Been Created",
      backgroundColor: Colors.green.withOpacity(0.5)
    ));
  }
}