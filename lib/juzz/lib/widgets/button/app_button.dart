
import 'package:islame_app_new_design/juzz/lib/animations/bottom_animation.dart';
import 'package:islame_app_new_design/juzz/lib/configs/app_dimensions.dart';
import 'package:flutter/material.dart';
import 'package:islame_app_new_design/juzz/lib/configs/app_typography.dart';
import 'package:islame_app_new_design/juzz/lib/utils/assets.dart';

import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String title;
  final void Function()? onPressed;
  const AppButton({Key? key, required this.title, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppDimensions.normalize(100),
      height: AppDimensions.normalize(20),
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        onPressed: onPressed,
        child: WidgetAnimator(
          child: Text(
            title,
            style: AppText.b1,
          ),
        ),
        color: const Color(0xffee8f8b),
      ),
    );
  }
}
