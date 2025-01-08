import 'package:flutter/material.dart';
import 'package:my_portfolio_web/extra_resources/widgets/common_text_widget.dart';

class TopTitleButtons extends StatelessWidget {
  final Color? containerColor;
  final Color? textColor;
  final String text;
  final FontWeight? fontWeight;
  final double height;
  final double width;
  final double? fontSize;

  const TopTitleButtons({
    super.key,
    this.containerColor,
    this.textColor,
    required this.text,
    this.fontWeight,
    required this.height,
    required this.width,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: containerColor,
      ),
      child: Center(
        child: CommonTextWidget(
          text: text,
          fontWeight: fontWeight,
          color: textColor,
          fontSize: fontSize,
        ),
      ),
    );
  }
}
