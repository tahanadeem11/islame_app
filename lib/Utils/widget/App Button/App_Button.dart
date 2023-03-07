import 'package:flutter/material.dart';

import '../../Fonts/app_fonts.dart';
import '../AppText/App Text.dart';
class AppButton extends StatelessWidget {
  final String buttonName;
  final double textSize;
  final double buttonWidth;
  final double buttonHeight;
  final Color buttonColor;
  final Color textColor;
  final Color iconColor;
  final FontWeight fontWeight;
  final BorderRadius buttonRadius;
  final IconData icon;
  final String iconImage;
  final bool isIcon;
  final bool isCenter;
  final double iconSize;
  final double paddingBtwn;
  final VoidCallback onTap;
  final double borderWidth;
  final Color borderColor;
  final String fontFamily;
  const AppButton({
    Key? key,
    required this.buttonName,
    this.buttonWidth = 150,
    this.buttonHeight = 50,
    required this.buttonColor,
    required this.textColor,
    this.fontWeight = FontWeight.w500,
    this.buttonRadius = BorderRadius.zero,
    this.iconColor = Colors.white,
    this.icon = Icons.home,
    this.iconImage = "",
    this.isIcon = false,
    this.isCenter = false,
    this.iconSize = 30,
    this.paddingBtwn = 0,
    this.fontFamily = "Bold",
    required this.onTap,
    this.textSize = 15,
    this.borderWidth = 0,
    this.borderColor = Colors.transparent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          height: buttonHeight,
          width: buttonWidth,
          decoration: BoxDecoration(
              color: buttonColor,
              borderRadius: buttonRadius,
              border: Border.all(
                width: borderWidth,
                color: borderColor,
              )),
          child: Padding(
            padding:isCenter?const EdgeInsets.symmetric(horizontal:20): EdgeInsets.only(left: paddingBtwn == 0 ? 0 : 15),
            child: Row(
              mainAxisAlignment: paddingBtwn == 0
                  ?  MainAxisAlignment.center
                  : MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                isIcon
                    ? iconImage == ""
                    ? Icon(
                  icon,
                  color: iconColor,
                  size: iconSize,
                )
                    : Image.asset(
                  iconImage,
                  height: iconSize,
                )
                    : Container(),
                isCenter?const Spacer(): SizedBox(
                  width: paddingBtwn == 0
                      ? isIcon
                      ? 10
                      : 0
                      : paddingBtwn,
                ),
                AppText(
                    title: buttonName,
                    color: textColor,
                    fontFamily: Weights.PSemiBold,
                    fontWeight: fontWeight,
                    size: textSize),
                isCenter?const Spacer():Container(),
                isCenter?
                isIcon
                    ? iconImage == ""
                    ? Icon(
                  icon,
                  color: iconColor,
                  size: iconSize,
                )
                    : Image.asset(
                    iconImage,
                    height: iconSize,
                    color:Colors.transparent
                )
                    : Container(): Container(),
              ],
            ),
          )),
    );
  }
}