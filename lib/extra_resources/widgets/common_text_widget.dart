import 'package:flutter/material.dart';
import 'package:my_portfolio_web/app/color_manager.dart';
import 'package:my_portfolio_web/app/constants.dart';

class CommonTextWidget extends StatelessWidget {
  final String text;
  final double? fontSize;
  final Color? color;
  final FontWeight? fontWeight;

  const CommonTextWidget(
      {required this.text,
      this.fontSize,
      this.color,
      this.fontWeight,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: Constants.fontFamily,
        fontSize: fontSize,
        color: color ?? ColorManager.grey,
        fontWeight: fontWeight,
      ),
    );
  }
}
