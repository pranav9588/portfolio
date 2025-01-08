// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:my_portfolio_web/app/color_manager.dart';
import 'package:my_portfolio_web/app/constants.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: ColorManager.white,
      ),
      child: Column(
        children: [
          Image.asset(Constants.mediumSvg),
          // Image(
          //   height: 100,
          //   width: 100,
          //   image: Svg(
          //     Constants.mediumSvg,
          //   ),
          // ),
        ],
      ),
    );
  }
}
