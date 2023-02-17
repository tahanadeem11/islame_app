import 'package:flutter/material.dart';
class AppText extends StatelessWidget {
  const AppText({
    Key? key,
    this.title = "",
    this.color = Colors.black,
    this.size,
    this.fontWeight,
    this.fontFamily,
    this.textAlign,
    this.letterSpacing,
    this.maxLines,
    this.overFlow,
  }) : super(key: key);
  final Color color;
  final TextOverflow? overFlow;
  final String title;
  final double? size;
  final FontWeight? fontWeight;
  final String? fontFamily;
  final TextAlign? textAlign;
  final double? letterSpacing;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,

      style: TextStyle(

        color: color,
        fontSize: size,
        fontWeight: fontWeight,
        fontFamily: fontFamily,
        letterSpacing: letterSpacing,
      ),
      overflow: overFlow,
      textAlign: textAlign,
      maxLines: maxLines,
    );
  }
}