
import 'package:islame_app_new_design/juzz/lib/configs/app_dimensions.dart';
import 'package:flutter/material.dart';
import 'package:islame_app_new_design/juzz/lib/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AppBackButton extends StatelessWidget {
  const AppBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.02,
      left: MediaQuery.of(context).size.width * 0.02,
      child: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: Icon(
          Iconsax.arrow_left,
          size: AppDimensions.normalize(12),
        ),
      ),
    );
  }
}
