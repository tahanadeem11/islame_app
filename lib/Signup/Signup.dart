import 'package:flutter/material.dart';
import 'package:islame_app_new_design/Utils/constants/assets_paths.dart';
class signup extends StatelessWidget {
  const signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
          ],
        ),
      ),
    );
  }
}
