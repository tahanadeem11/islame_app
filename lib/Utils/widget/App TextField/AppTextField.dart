// ignore_for_file: file_names, unnecessary_this, must_be_immutable

import 'package:flutter/material.dart';
import '../../Theme/app_color.dart';

class AppTextField extends StatefulWidget {
  AppTextField({
    Key? key,
    this.hint = "",
    this.hintColor,
    this.hintSize,
    this.textInputType,
    this.textInputAction,
    this.prefixIcon,
    this.suffixIcon,
    this.isShowCursor = true,
    this.isReadOnly = false,
    this.maxLines,
    this.isVisible = true,
    this.enabled = true,
    this.onChange,
    this.onEditingComplete,
    this.cursorColor,
    this.onFieldSubmitted,
    this.onSaved,
    this.validator,
    this.isborderline = false,
    this.borderColor = Colors.orange,
    this.borderRadius = BorderRadius.zero,
    /* this.intialValue = "",*/
    this.onTap,
    this.obsecure = false,
    this.controller,
    this.fillColor = Colors.white,
    this.isFill = false,
    this.fontFamily = "Grold",
    this.maxLength,
    this.onSuffixTap, this.isPrefix=false, this.padding=EdgeInsets.zero,
  }) : super(key: key);
  final bool obsecure;
  final String hint;
  final bool isFill;
  final bool isVisible;
  final bool enabled;
  final String fontFamily;
  String? Function(String?)? validator;
  Function(String?)? onChange;
  final Color? hintColor;
  final double? hintSize;
  final TextEditingController? controller;
  final TextInputType? textInputType;
  final Widget? prefixIcon;
  final bool isShowCursor;
  final bool isReadOnly;
  final bool isPrefix;
  final EdgeInsets padding; 
  final int? maxLines;
  final int? maxLength;
  final Color borderColor;
  final Color? cursorColor;
  void Function()? onEditingComplete;
  void Function(String)? onFieldSubmitted;
  void Function(String?)? onSaved;
  final bool isborderline;
  final BorderRadius borderRadius;
  final Widget? suffixIcon;
  final TextInputAction? textInputAction;
  /*final String intialValue;*/
  final VoidCallback? onTap;
  final VoidCallback? onSuffixTap;
  final Color fillColor;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  bool isClear = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: widget.onChange ??
          (value) {
            if (value.isNotEmpty) {
              setState(() {
                isClear = true;
              });
            } else {
              setState(() {
                isClear = false;
              });
            }
          },
      onEditingComplete: widget.onEditingComplete,
      onSaved: widget.onSaved,
      onFieldSubmitted: widget.onFieldSubmitted,
      validator: widget.validator,
      controller: widget.controller,
      maxLength: widget.maxLength,
      obscureText: this.widget.obsecure,
      onTap: widget.onTap,
      cursorColor: widget.cursorColor ?? AppColors.Light_Grey_COLOR,
      /* initialValue: intialValue,*/
      maxLines: widget.maxLines,
      // maxLengthEnforced: false,
      showCursor: widget.isShowCursor,
      readOnly: widget.isReadOnly,
      keyboardType: widget.textInputType,
      textInputAction: widget.textInputAction,
      decoration: InputDecoration(
        contentPadding: widget.padding,
        fillColor: widget.fillColor,
        filled: widget.isFill,
        isDense: true,
        hintText: widget.hint,
        suffixIcon: widget.suffixIcon == null || !isClear
            ?null
            :  GestureDetector(
                onTap: widget.onSuffixTap ?? () {},
                child: this.widget.suffixIcon),
        prefixIcon:widget.isPrefix? this.widget.prefixIcon:null,
        hintStyle: TextStyle(
            color: widget.hintColor,
            fontSize: widget.hintSize,
            fontFamily: widget.fontFamily,
            //fontWeight: FontWeights.regular
             ),
        border: widget.isborderline
            ? OutlineInputBorder(
                borderSide: BorderSide(
                  color: widget.borderColor,
                ),
                borderRadius: widget.borderRadius,
              )
            : null,
        enabledBorder: widget.isborderline
            ? OutlineInputBorder(
                borderSide: BorderSide(
                  color: widget.borderColor,
                ),
                borderRadius: widget.borderRadius,
              )
            : null,
        disabledBorder: widget.isborderline
            ? OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: widget.borderColor),
                borderRadius: widget.borderRadius,
              )
            : null,
        errorBorder: widget.isborderline
            ? OutlineInputBorder(
                borderSide: BorderSide(
                  color: widget.borderColor,
                ),
                borderRadius: widget.borderRadius,
              )
            : null,
        focusedBorder: widget.isborderline
            ? OutlineInputBorder(
                borderSide: BorderSide(
                  color: widget.borderColor,
                ),
                borderRadius: widget.borderRadius,
              )
            : null,
        focusedErrorBorder: widget.isborderline
            ? OutlineInputBorder(
                borderSide: BorderSide(
                  color: widget.borderColor,
                ),
                borderRadius: widget.borderRadius,
              )
            : null,
      ),
    );
  }
}
